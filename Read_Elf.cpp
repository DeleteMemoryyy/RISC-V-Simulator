#include "Read_Elf.h"

using namespace std;

FILE *file = NULL;
FILE *elf = NULL;
Elf64_Ehdr elf64_hdr;

char *shsttab = NULL;
char *strtab = NULL;
char *symtab = NULL;

ULL cOffset = 0;
ULL cSize = 0;
ULL cVadr = 0;

ULL dOffset = 0;
ULL dSize = 0;
ULL dVadr = 0;

ULL gp = 0;
ULL entry = 0;
ULL mainAddr = 0;
ULL mainSize = 0;
ULL textSize = 0;
ULL dataAddr = 0;

GlobalSymbol globalSymbol[100];
int symNum = 0;

// Program headers
static ULL padr = 0;
static unsigned short psize = 0;
static unsigned short pnum = 0;

// Section Headers
static ULL sadr = 0;
static unsigned short ssize = 0;
static unsigned short snum = 0;

// Symbol table
ULL symadr = 0;
static unsigned short symsize = 0;
static unsigned short symnum = 0;
static unsigned int sh_index = 0;
static unsigned int stradr = 0;


bool open_file(string fname)
{
    file = fopen(fname.c_str(), "r");
    if (file == NULL)
        return false;
    char elfName[100] = {0};
    sprintf(elfName, "%s.elf", fname.c_str());
    elf = fopen(elfName, "w");
    if (elf == NULL)
        return false;
    return true;
}

bool read_elf(string fname)
{
    if (!open_file(fname))
        return false;

    fprintf(elf, "ELF Header:\n");
    read_elf_header();

    read_elf_shst();

    fprintf(elf, "\n\nSection Headers:\n");
    read_elf_sections();

    read_elf_strtab();

    fprintf(elf, "\n\nProgram Headers:\n");
    read_elf_phdr();

    fprintf(elf, "\n\nSymbol Table:\n");
    read_elf_symtable();

    fclose(elf);
    return true;
}

void read_elf_header()
{
    // file should be relocated
    fseek(file, 0, SEEK_SET);
    fread(&elf64_hdr, 1, sizeof(elf64_hdr), file);

    fprintf(elf, " magic number: ");

    for (int i = 0; i < EI_NIDENT; ++i)
        fprintf(elf, " 0x%x", elf64_hdr.e_ident[i]);

    fprintf(elf, "\n");

    fprintf(elf, " Class:  ");
    switch (elf64_hdr.e_ident[EI_CLASS])
        {
            case 0:
                fprintf(elf, "ELFCLASSNONE\n");
                break;
            case 1:
                fprintf(elf, "ELFCLASS32\n");
                break;
            case 2:
                fprintf(elf, "ELFCLASS64\n");
                break;
            default:
                fprintf(elf, "\n");
        }

    fprintf(elf, " Data:  ");
    switch (elf64_hdr.e_ident[EI_DATA])
        {
            case 0:
                fprintf(elf, "ELFDATANONE\n");
                break;
            case 1:
                fprintf(elf, "ELFDATA2LSB\n");
                break;
            case 2:
                fprintf(elf, "ELFDATA2MSB\n");
                break;
            default:
                fprintf(elf, "\n");
        }

    fprintf(elf, " Version:  0x%x\n", elf64_hdr.e_ident[EI_VERSION]);

    fprintf(elf, " OS/ABI:  ");
    switch (elf64_hdr.e_ident[EI_OSABI])
        {
            case 0x00:
                fprintf(elf, "UNIX Syetem V\n");
                break;
            case 0x03:
                fprintf(elf, "LINUX\n");
                break;
            case 0x06:
                fprintf(elf, "Solaris\n");
                break;
            case 0x09:
                fprintf(elf, "FreeBSD\n");
                break;
            default:
                fprintf(elf, "Unknown\n");
                break;
        }

    fprintf(elf, " ABI Version:   0x%x\n", elf64_hdr.e_ident[EI_ABIVERSION]);

    fprintf(elf, " Type:  ");
    switch ((unsigned short)elf64_hdr.e_type)
        {
            case 0:
                fprintf(elf, "ET_NONE\n");
                break;
            case 1:
                fprintf(elf, "ET_REL\n");
                break;
            case 2:
                fprintf(elf, "ET_EXEC\n");
                break;
            case 3:
                fprintf(elf, "ET_DYN\n");
                break;
            case 4:
                fprintf(elf, "ET_CORE\n");
                break;
            case 0xff00:
                fprintf(elf, "ET_LOPROC\n");
                break;
            case 0xffff:
                fprintf(elf, "ET_HIPROC\n");
                break;
            default:
                fprintf(elf, "\n");
        }

    fprintf(elf, " Machine:  ");
    switch ((unsigned short)elf64_hdr.e_machine)
        {
            case 0:
                fprintf(elf, "ET_NONE\n");
                break;
            case 1:
                fprintf(elf, "EM_M32\n");
                break;
            case 2:
                fprintf(elf, "EM_SPARC\n");
                break;
            case 3:
                fprintf(elf, "EM_386\n");
                break;
            case 4:
                fprintf(elf, "EM_68K\n");
                break;
            case 5:
                fprintf(elf, "EM_88K\n");
                break;
            case 6:
                fprintf(elf, "\n");
                break;
            case 7:
                fprintf(elf, "EM_860\n");
                break;
            case 8:
                fprintf(elf, "EM_MIPS\n");
                break;
            case 9:
                fprintf(elf, "\n");
                break;
            case 10:
                fprintf(elf, "EM_MIPS_RS4-BE\n");
                break;
            default:
                fprintf(elf, "\n");
        }

    fprintf(elf, " Version:  %d\n", (unsigned int)elf64_hdr.e_version);

    fprintf(elf, " Entry point address:  0x%llx\n", (ULL)elf64_hdr.e_entry);
    entry = (ULL)elf64_hdr.e_entry;

    fprintf(elf, " Start of program headers:  %lld bytes into file\n", (ULL)elf64_hdr.e_phoff);
    padr = (ULL)elf64_hdr.e_phoff;

    fprintf(elf, " Start of section headers:  %lld bytes into file\n", (ULL)elf64_hdr.e_shoff);
    sadr = (ULL)elf64_hdr.e_shoff;

    fprintf(elf, " Flags:  0x%x\n", (unsigned int)elf64_hdr.e_flags);

    fprintf(elf, " Size of this header:  %hd Bytes\n", (unsigned short)elf64_hdr.e_ehsize);

    fprintf(elf, " Size of program headers:  %hd Bytes\n", (unsigned short)elf64_hdr.e_phentsize);
    psize = (unsigned short)elf64_hdr.e_phentsize;

    fprintf(elf, " Number of program headers:  %hd\n", (unsigned short)elf64_hdr.e_phnum);
    pnum = (unsigned short)elf64_hdr.e_phnum;

    fprintf(elf, " Size of section headers:  %hd Bytes\n", (unsigned short)elf64_hdr.e_shentsize);
    ssize = (unsigned short)elf64_hdr.e_shentsize;

    fprintf(elf, " Number of section headers:  %hd\n", (unsigned short)elf64_hdr.e_shnum);
    snum = (unsigned short)elf64_hdr.e_shnum;

    fprintf(elf, " Section header string table index:  %hd\n",
            (unsigned short)elf64_hdr.e_shstrndx);
}


void read_elf_shst()
{
    Elf64_Shdr shst_shdr;
    fseek(file, sadr + elf64_hdr.e_shstrndx * ssize, SEEK_SET);
    fread(&shst_shdr, 1, ssize, file);

    shsttab = new char[(ULL)shst_shdr.sh_size + 100];
    memset(shsttab, 0, (ULL)shst_shdr.sh_size + 100);
    fseek(file, shst_shdr.sh_offset, SEEK_SET);
    fread(shsttab, 1, (ULL)shst_shdr.sh_size, file);
}

void read_elf_sections()
{
    Elf64_Shdr elf64_shdr;

    fseek(file, sadr, SEEK_SET);

    for (int c = 0; c < snum; c++)
        {
            fprintf(elf, "[%3d]", c);

            // file should be relocated
            fread(&elf64_shdr, 1, sizeof(elf64_shdr), file);

            fprintf(elf, "  Name: %s", (char *)(shsttab + (unsigned int)elf64_shdr.sh_name));

            if (strcmp((char *)(shsttab + (unsigned int)elf64_shdr.sh_name), ".data") == 0)
                {
                    dataAddr = (ULL)elf64_shdr.sh_addr;
                }

            fprintf(elf, "  Type: ");
            switch ((unsigned int)elf64_shdr.sh_type)
                {
                    case 0:
                        fprintf(elf, "SHT_NULL");
                        break;
                    case 1:
                        fprintf(elf, "SHT_PROGBITS");
                        break;
                    case 2:
                        fprintf(elf, "SHT_SYMTAB");
                        symadr = (ULL)elf64_shdr.sh_offset;
                        symsize = (unsigned short)elf64_shdr.sh_size;
                        symnum = symsize / sizeof(Elf64_Sym);
                        break;
                    case 3:
                        fprintf(elf, "SHT_STRTAB");
                        break;
                    case 4:
                        fprintf(elf, "SHT_RELA");
                        break;
                    case 5:
                        fprintf(elf, "SHT_HASH");
                        break;
                    case 6:
                        fprintf(elf, "SHT_DYNAMIC");
                        break;
                    case 7:
                        fprintf(elf, "SHT_NOTE");
                        break;
                    case 8:
                        fprintf(elf, "SHT_NOBITS");
                        break;
                    case 9:
                        fprintf(elf, "SHT_REL");
                        break;
                    case 10:
                        fprintf(elf, "SHT_SHLIB");
                        break;
                    case 11:
                        fprintf(elf, "SHT_DYNSYM");
                        break;
                    case 0x70000000:
                        fprintf(elf, "SHT_LOPROC");
                        break;
                    case 0x7fffffff:
                        fprintf(elf, "SHT_HIPROC");
                        break;
                    case 0x80000000:
                        fprintf(elf, "SHT_LOUSER");
                        break;
                    case 0xffffffff:
                        fprintf(elf, "SHT_HIUSER");
                        break;
                    default:
                        break;
                }

            fprintf(elf, "  Address: 0x%llx", (ULL)elf64_shdr.sh_addr);

            fprintf(elf, "  Offest: %lld", (ULL)elf64_shdr.sh_offset);

            fprintf(elf, "  Size: %lld", (ULL)elf64_shdr.sh_size);

            fprintf(elf, "  Entsize: %lld", (ULL)elf64_shdr.sh_entsize);

            fprintf(elf, "  Flags: ");
            switch (elf64_shdr.sh_flags)
                {
                    case 0x1:
                        fprintf(elf, "SHF_WRITE");
                        break;
                    case 0x2:
                        fprintf(elf, "SHF_ALLOC");
                        break;
                    case 0x4:
                        fprintf(elf, "SHF_EXECINSTR");
                        break;
                    case 0xf0000000:
                        fprintf(elf, "SHF_MASHPROC");
                        break;
                    default:
                        break;
                }

            fprintf(elf, "  Link: %d", (unsigned int)elf64_shdr.sh_link);

            fprintf(elf, "  Info: %d", (unsigned int)elf64_shdr.sh_info);

            fprintf(elf, "  Align: %lld", (ULL)elf64_shdr.sh_addralign);
            fprintf(elf, "\n");
        }
}

void read_elf_strtab()
{
    Elf64_Shdr elf64_shdr;

    fseek(file, sadr, SEEK_SET);

    for (int c = 0; c < snum; c++)
        {
            fread(&elf64_shdr, 1, sizeof(elf64_shdr), file);

            if ((unsigned int)elf64_shdr.sh_type == 3 &&
                strcmp((char *)(shsttab + (unsigned int)elf64_shdr.sh_name), ".strtab") == 0)
                {
                    strtab = new char[(ULL)elf64_shdr.sh_size + 100];
                    memset(strtab, 0, (ULL)elf64_shdr.sh_size + 100);
                    fseek(file, (ULL)elf64_shdr.sh_offset, SEEK_SET);
                    fread(strtab, 1, (ULL)elf64_shdr.sh_size, file);
                }
            else if ((unsigned int)elf64_shdr.sh_type == 1 &&
                     strcmp((char *)(shsttab + (unsigned int)elf64_shdr.sh_name), ".text") == 0)
                {
                    textSize = (ULL)elf64_shdr.sh_size;
                }
        }
}

void read_elf_phdr()
{
    Elf64_Phdr elf64_phdr;

    fseek(file, padr, SEEK_SET);

    for (int c = 0; c < pnum; c++)
        {
            fprintf(elf, "[%3d]", c);

            // file should be relocated
            fread(&elf64_phdr, 1, sizeof(elf64_phdr), file);

            fprintf(elf, "  Type: ");
            switch (elf64_phdr.p_type)
                {
                    case 0:
                        fprintf(elf, "PT_NULL");
                        break;
                    case 1:
                        fprintf(elf, "PT_LOAD");
                        break;
                    case 2:
                        fprintf(elf, "PT_DYNAMIC");
                        break;
                    case 3:
                        fprintf(elf, "PT_INTERP");
                        break;
                    case 4:
                        fprintf(elf, "PT_NOTE");
                        break;
                    case 5:
                        fprintf(elf, "PT_SHLIB");
                        break;
                    case 6:
                        fprintf(elf, "PT_PHDR");
                        break;
                    case 0x70000000:
                        fprintf(elf, "PT_LOPROC");
                        break;
                    case 0x7fffffff:
                        fprintf(elf, "PT_HIPROC");
                        break;
                    default:
                        break;
                }

            fprintf(elf, "  Flags: ");
            switch ((unsigned int)elf64_phdr.p_flags)
                {
                    case 1:
                        fprintf(elf, "X");
                        break;
                    case 2:
                        fprintf(elf, "W");
                        break;
                    case 3:
                        fprintf(elf, "WX");
                        break;
                    case 4:
                        fprintf(elf, "R");
                        break;
                    case 5:
                        fprintf(elf, "RX");
                        if (elf64_phdr.p_type == 1)
                            {
                                cOffset = (ULL)elf64_phdr.p_offset;
                                cSize = (ULL)elf64_phdr.p_filesz;
                                cVadr = (ULL)elf64_phdr.p_vaddr;
                            }
                        break;
                    case 6:
                        fprintf(elf, "RW");
                        if (elf64_phdr.p_type == 1)
                            {
                                dOffset = (ULL)elf64_phdr.p_offset;
                                dSize = elf64_phdr.p_filesz;
                                dVadr = (ULL)elf64_phdr.p_vaddr;
                            }
                        break;
                    case 7:
                        fprintf(elf, "RWX");
                        break;
                    default:
                        fprintf(elf, "U");
                        break;
                }

            fprintf(elf, "  Offset: %lld", (ULL)elf64_phdr.p_offset);

            fprintf(elf, "  VirtAddr: 0x%llx", (ULL)elf64_phdr.p_vaddr);

            fprintf(elf, "  PhysAddr: 0x%llx", (ULL)elf64_phdr.p_paddr);

            fprintf(elf, "  FileSiz: %lld", (ULL)elf64_phdr.p_filesz);

            fprintf(elf, "  MemSiz: %lld", (ULL)elf64_phdr.p_memsz);

            fprintf(elf, "  Align: %lld", (ULL)elf64_phdr.p_align);
            fprintf(elf, "\n");
        }
}


void read_elf_symtable()
{
    Elf64_Sym elf64_sym;

    symNum = 0;

    fseek(file, symadr, SEEK_SET);

    for (int c = 0; c < symnum; c++)
        {
            fprintf(elf, "[%3d]", c);

            // file should be relocated
            fread(&elf64_sym, 1, sizeof(elf64_sym), file);

            fprintf(elf, "  Name: %s", (char *)(strtab + (unsigned int)elf64_sym.st_name));

            if (strcmp((char *)(strtab + (unsigned int)elf64_sym.st_name), "__global_pointer$") ==
                0)
                {
                    gp = elf64_sym.st_value;
                }

            if (strcmp((char *)(strtab + (unsigned int)elf64_sym.st_name), "main") == 0)
                {
                    mainAddr = elf64_sym.st_value;
                    mainSize = elf64_sym.st_size;
                }

            fprintf(elf, "  Bind: ");
            switch (ELF64_ST_BIND(elf64_sym.st_info))
                {
                    case 0:
                        fprintf(elf, "STB_LOCAL");
                        break;
                    case 1:
                        fprintf(elf, "STB_GLOBAL");
                        break;
                    case 2:
                        fprintf(elf, "STB_WEAK");
                        break;
                    case 13:
                        fprintf(elf, "STB_LOPROC");
                        break;
                    case 15:
                        fprintf(elf, "STB_HIPROC");
                        break;
                    default:
                        break;
                }

            fprintf(elf, "  Type: ");
            switch (ELF64_ST_TYPE(elf64_sym.st_info))
                {
                    case 0:
                        fprintf(elf, "STT_NOTYPE");
                        break;
                    case 1:
                        fprintf(elf, "STT_OBJECT");
                        break;
                    case 2:
                        fprintf(elf, "STT_FUNC");
                        break;
                    case 3:
                        fprintf(elf, "STT_SECTION");
                        break;
                    case 4:
                        fprintf(elf, "STT_FILE");
                        break;
                    case 13:
                        fprintf(elf, "STT_LOPROC");
                        break;
                    case 15:
                        fprintf(elf, "STT_HIPROC");
                        break;
                    default:
                        break;
                }

            if ((ELF64_ST_BIND(elf64_sym.st_info) == 1) &&
                (ELF64_ST_TYPE(elf64_sym.st_info) == 1) &&
                *((char *)(strtab + (unsigned int)elf64_sym.st_name)) != '_')
                {
                    sprintf(globalSymbol[symNum].name, "%s",
                            (char *)(strtab + (unsigned int)elf64_sym.st_name));
                    globalSymbol[symNum].addr = elf64_sym.st_value;
                    globalSymbol[symNum].size = elf64_sym.st_size;
                    symNum++;
                }

            fprintf(elf, "  NDX: %hd", (unsigned short)elf64_sym.st_shndx);

            fprintf(elf, "  Size: %lld", (ULL)elf64_sym.st_size);

            fprintf(elf, "  Value: 0x%llx", (ULL)elf64_sym.st_value);

            fprintf(elf, "\n");
        }
}