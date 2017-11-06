#include "UI.h"

using namespace std;

static DisplayState dState = Setting;

static string curFileName;
static bool fileLoaded = false;
static char *elfBuf = NULL;
static ULL elfSize = 0;

static void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error %d: %s\n", error, description);
}

int main()
{
    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;
    GLFWwindow *window = glfwCreateWindow(1280, 720, "Risc-V Simulator", NULL, NULL);
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);  // Enable vsync
    glClearColor(0.45f, 0.55f, 0.60f, 1.00f);

    bool load_from_file = true;
    bool start_to_load = false;
    bool load_false = false;

    bool show_elf = false;

    bool keep_running = false;

    ULL memAddr = 0;

    // Setup ImGui binding
    ImGui_ImplGlfwGL2_Init(window, true);

    while (!glfwWindowShouldClose(window))
        {
            glfwPollEvents();
            ImGui_ImplGlfwGL2_NewFrame();

            switch (dState)
                {
                    case Setting:
                        glClear(GL_COLOR_BUFFER_BIT);
                        {
                            ImGui::SetNextWindowSize(ImVec2(450, 200), ImGuiSetCond_Once);
                            ImGui::SetNextWindowPos(ImVec2(20, 5), ImGuiSetCond_Once);
                            ImGui::Begin("Control", NULL,
                                         ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove |
                                             ImGuiWindowFlags_NoCollapse);
                            ImGui::Text(" ");
                            ImGui::Text("   No file loaded");

                            ImGui::Text(" ");
                            ImGui::SameLine(0, 225);

                            ImGui::PushID(0);
                            ImGui::PushStyleColor(ImGuiCol_Button, (ImVec4)ImColor(184, 184, 184));
                            ImGui::PushStyleColor(ImGuiCol_ButtonHovered,
                                                  (ImVec4)ImColor(184, 184, 184));
                            ImGui::PushStyleColor(ImGuiCol_ButtonActive,
                                                  (ImVec4)ImColor(184, 184, 184));
                            ImGui::Button("Show ELF", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::SameLine(0, 24);
                            ImGui::PushID(0);
                            ImGui::PushStyleColor(ImGuiCol_Button,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.6f, 0.6f));
                            ImGui::PushStyleColor(ImGuiCol_ButtonHovered,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.7f, 0.7f));
                            ImGui::PushStyleColor(ImGuiCol_ButtonActive,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.8f, 0.8f));
                            if (ImGui::Button("Load File", ImVec2(80, 35)))
                                load_from_file ^= 1;
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::End();

                            if (load_from_file)
                                {
                                    ImGui::SetNextWindowSize(ImVec2(500, 110), ImGuiSetCond_Once);
                                    ImGui::SetNextWindowPos(ImVec2(530, 30), ImGuiSetCond_Once);
                                    ImGui::Begin("Load File", &load_from_file,
                                                 ImGuiWindowFlags_NoResize);
                                    static char buf1[64] = "test";
                                    ImGui::Text("./Test/");
                                    ImGui::SameLine();
                                    ImGui::InputText("	File Name", buf1, 64);


                                    ImGui::PushID(0);
                                    ImGui::PushStyleColor(
                                        ImGuiCol_Button,
                                        (ImVec4)ImColor::HSV(4 / 7.0f, 0.6f, 0.6f));
                                    ImGui::PushStyleColor(
                                        ImGuiCol_ButtonHovered,
                                        (ImVec4)ImColor::HSV(4 / 7.0f, 0.7f, 0.7f));
                                    ImGui::PushStyleColor(
                                        ImGuiCol_ButtonActive,
                                        (ImVec4)ImColor::HSV(4 / 7.0f, 0.8f, 0.8f));

                                    ImGui::Text("   ");
                                    ImGui::Text("   ");
                                    ImGui::SameLine();
                                    if (ImGui::Button("Load", ImVec2(80, 30)))
                                        start_to_load ^= 1;
                                    ImGui::PopStyleColor(3);
                                    ImGui::PopID();

                                    if (start_to_load)
                                        {
                                            string fileName = string("./Test/") + string(buf1);
                                            if (read_elf(fileName))
                                                {
                                                    curFileName = fileName;
                                                    fileLoaded = true;
                                                    if (elfBuf != NULL)
                                                        delete[] elfBuf;
                                                    FILE *pfile;
                                                    pfile = fopen(string(fileName + ".elf").c_str(),
                                                                  "rb");
                                                    if (pfile == NULL)
                                                        {
                                                            ERROR(__LINE__);
                                                            exit(1);
                                                        }
                                                    fseek(pfile, 0, SEEK_END);
                                                    elfSize = ftell(pfile);
                                                    rewind(pfile);
                                                    elfBuf = new char[elfSize];
                                                    ULL readResult =
                                                        fread(elfBuf, 1, elfSize, pfile);
                                                    if (readResult != elfSize)
                                                        {
                                                            ERROR(__LINE__);
                                                            exit(1);
                                                        }
                                                    fclose(pfile);
                                                    setup();
                                                    ImGui::SameLine();
                                                    ImGui::Text("	Load success.");
                                                    dState = Pausing;
                                                }
                                            else
                                                {
                                                    load_false = true;
                                                    start_to_load ^= 1;
                                                }
                                        }

                                    if (load_false)
                                        {
                                            ImGui::SameLine();
                                            ImGui::Text("	File not exist.");
                                        }
                                    ImGui::End();
                                }
                        }
                        break;
                    case Pausing:
                        glClear(GL_COLOR_BUFFER_BIT);
                        {
                            ImGui::SetNextWindowSize(ImVec2(450, 200), ImGuiSetCond_Once);
                            ImGui::SetNextWindowPos(ImVec2(20, 5), ImGuiSetCond_Once);
                            ImGui::Begin("Control", NULL,
                                         ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove |
                                             ImGuiWindowFlags_NoCollapse);
                            ImGui::Text(" ");
                            ImGui::Text("   Current file: %s", curFileName.c_str());

                            ImGui::Text(" ");
                            ImGui::SameLine(0, 225);

                            ImGui::PushID(0);
                            ImGui::PushStyleColor(ImGuiCol_Button,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.6f, 0.6f));
                            ImGui::PushStyleColor(ImGuiCol_ButtonHovered,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.7f, 0.7f));
                            ImGui::PushStyleColor(ImGuiCol_ButtonActive,
                                                  (ImVec4)ImColor::HSV(4 / 7.0f, 0.8f, 0.8f));
                            if (ImGui::Button("Show ELF", ImVec2(80, 35)))
                                show_elf ^= 1;
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::SameLine(0, 24);
                            ImGui::PushID(0);
                            ImGui::PushStyleColor(ImGuiCol_Button, (ImVec4)ImColor(184, 184, 184));
                            ImGui::PushStyleColor(ImGuiCol_ButtonHovered,
                                                  (ImVec4)ImColor(184, 184, 184));
                            ImGui::PushStyleColor(ImGuiCol_ButtonActive,
                                                  (ImVec4)ImColor(184, 184, 184));
                            ImGui::Button("Load File", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::Text("\n");
                            ImGui::Text("\n");

                            for (int i = 0; i < 4; ++i)
                                {
                                    ImGui::PushID(i);
                                    ImGui::PushStyleColor(
                                        ImGuiCol_Button,
                                        (ImVec4)ImColor::HSV(i / 7.0f, 0.6f, 0.6f));
                                    ImGui::PushStyleColor(
                                        ImGuiCol_ButtonHovered,
                                        (ImVec4)ImColor::HSV(i / 7.0f, 0.7f, 0.7f));
                                    ImGui::PushStyleColor(
                                        ImGuiCol_ButtonActive,
                                        (ImVec4)ImColor::HSV(i / 7.0f, 0.8f, 0.8f));
                                }

                            ImGui::Text(" ");
                            ImGui::SameLine(0, 10);
                            bool _run = ImGui::Button("Run", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::SameLine(0, 24);
                            bool _step = ImGui::Button("Step", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::SameLine(0, 24);
                            bool _reset = ImGui::Button("Reset", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::SameLine(0, 24);
                            bool _dump = ImGui::Button("Dump", ImVec2(80, 35));
                            ImGui::PopStyleColor(3);
                            ImGui::PopID();

                            ImGui::End();


                            ImGui::SetNextWindowSize(ImVec2(450, 450), ImGuiSetCond_Once);
                            ImGui::SetNextWindowPos(ImVec2(20, 220), ImGuiSetCond_Once);
                            ImGui::Begin("Register", NULL,
                                         ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove |
                                             ImGuiWindowFlags_NoCollapse);
                            ImGui::Text(" ");
                            ImGui::Text(" Last instruction: %s", InstBuf);

                            ImGui::Text(" PC: 0x%llx", PC);
                            ImGui::Text(" ");

                            static int selected_fish = 1;
                            const char *names[] = {"Hex", "Decimal", "Unsigned"};
                            if (ImGui::Button("Select Format"))
                                ImGui::OpenPopup("select");
                            ImGui::SameLine();
                            ImGui::Text("%s", names[selected_fish]);
                            if (ImGui::BeginPopup("select"))
                                {
                                    ImGui::Text("Scale");
                                    ImGui::Separator();
                                    for (int i = 0; i < IM_ARRAYSIZE(names); i++)
                                        if (ImGui::Selectable(names[i]))
                                            selected_fish = i;
                                    ImGui::EndPopup();
                                }

                            ImGui::Columns(3, "mycolumns");  // 4-ways, with border
                            ImGui::Separator();
                            ImGui::Text("ID");
                            ImGui::NextColumn();
                            ImGui::Text("Name");
                            ImGui::NextColumn();
                            ImGui::Text("Value");
                            ImGui::NextColumn();
                            ImGui::Separator();
                            static int selected = -1;
                            for (int i = 0; i < 32; i++)
                                {
                                    ImGui::Text("%d", i);
                                    ImGui::NextColumn();
                                    ImGui::Text("%s", R_NAME[i]);
                                    ImGui::NextColumn();
                                    switch (selected_fish)
                                        {
                                            case 0:
                                                ImGui::Text("0x%llx", reg[i]);
                                                break;
                                            case 1:
                                                ImGui::Text("%lld", reg[i]);
                                                break;
                                            case 2:
                                                ImGui::Text("%lluu", reg[i]);
                                                break;
                                            default:
                                                break;
                                        }

                                    ImGui::NextColumn();
                                }
                            ImGui::Columns(1);
                            ImGui::Separator();
                            ImGui::End();


                            ImGui::SetNextWindowSize(ImVec2(600, 680), ImGuiSetCond_Once);
                            ImGui::SetNextWindowPos(ImVec2(540, 5), ImGuiSetCond_Once);
                            ImGui::Begin("Memory", NULL,
                                         ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove |
                                             ImGuiWindowFlags_NoCollapse);

                            ImGui::Text(" ");

                            static int addr = memAddr;
                            bool goto_addr = ImGui::Button("Goto");
                            ImGui::SameLine();
                            ImGui::PushItemWidth(100);
                            goto_addr |= ImGui::InputInt("##Addr", &addr, 0, 0,
                                                         ImGuiInputTextFlags_EnterReturnsTrue);
                            if (goto_addr)
                                {
                                    memAddr = addr;
                                }
                            ImGui::PopItemWidth();

                            ImGui::SameLine(0, 20);
                            static int selected_format = 1;
                            const char *formats[] = {"Hex", "Decimal", "Unsigned", "ASCII"};
                            if (ImGui::Button("Select Format"))
                                ImGui::OpenPopup("select format");
                            ImGui::SameLine();
                            ImGui::Text("%s", formats[selected_format]);
                            if (ImGui::BeginPopup("select format"))
                                {
                                    ImGui::Separator();
                                    for (int i = 0; i < IM_ARRAYSIZE(formats); i++)
                                        if (ImGui::Selectable(formats[i]))
                                            selected_format = i;
                                    ImGui::EndPopup();
                                }
                            ImGui::SameLine(0, 20);

                            static int selected_size = 3;
                            const char *sizes[] = {"Byte", "Half Word", "Word", "Double Word"};
                            if (ImGui::Button("Select Scale"))
                                ImGui::OpenPopup("select scale");
                            ImGui::SameLine();
                            ImGui::Text("%s", sizes[selected_size]);
                            if (ImGui::BeginPopup("select scale"))
                                {
                                    ImGui::Separator();
                                    for (int i = 0; i < IM_ARRAYSIZE(sizes); i++)
                                        if (ImGui::Selectable(sizes[i]))
                                            selected_size = i;
                                    ImGui::EndPopup();
                                }

                            ImGui::BeginChild(
                                "Sub1", ImVec2(ImGui::GetWindowContentRegionWidth() * 0.6f, 600),
                                false, ImGuiWindowFlags_HorizontalScrollbar);

                            switch (selected_format)
                                {
                                    case 0:
                                        {
                                            switch (selected_size)
                                                {
                                                    case 0:
                                                        {
                                                            ULL endAddr = (V_TO_P(memAddr + 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? ((MEM_ED - endAddr))
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: 0x%x", memAddr + i,
                                                                        READ_BYTE(memAddr + i));
                                                                }
                                                        }
                                                        break;
                                                    case 1:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 2 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 2
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: 0x%x",
                                                                                memAddr + 2 * i,
                                                                                READ_HWORD(memAddr +
                                                                                           2 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 2:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 4 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 4
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: 0x%x",
                                                                        memAddr + 4 * i,
                                                                        READ_WORD(memAddr + 4 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 3:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 8 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 8
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: 0x%llx",
                                                                                memAddr + 8 * i,
                                                                                READ_DWORD(memAddr +
                                                                                           8 * i));
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                        }
                                        break;
                                    case 1:
                                        {
                                            switch (selected_size)
                                                {
                                                    case 0:
                                                        {
                                                            ULL endAddr = (V_TO_P(memAddr + 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr)
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: %d", memAddr + i,
                                                                        READ_BYTE(memAddr + i));
                                                                }
                                                        }
                                                        break;
                                                    case 1:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 2 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 2
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: %d",
                                                                                memAddr + 2 * i,
                                                                                READ_HWORD(memAddr +
                                                                                           2 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 2:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 4 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 4
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: %d",
                                                                        memAddr + 4 * i,
                                                                        READ_WORD(memAddr + 4 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 3:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 8 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 8
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: %lld",
                                                                                memAddr + 8 * i,
                                                                                READ_DWORD(memAddr +
                                                                                           8 * i));
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                        }
                                        break;
                                    case 2:
                                        {
                                            switch (selected_size)
                                                {
                                                    case 0:
                                                        {
                                                            ULL endAddr = (V_TO_P(memAddr + 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr)
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: %uu", memAddr + i,
                                                                        READ_BYTE(memAddr + i));
                                                                }
                                                        }
                                                        break;
                                                    case 1:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 2 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 2
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: %uu",
                                                                                memAddr + 2 * i,
                                                                                READ_HWORD(memAddr +
                                                                                           2 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 2:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 4 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 4
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: %uu",
                                                                        memAddr + 4 * i,
                                                                        READ_WORD(memAddr + 4 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 3:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 8 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 8
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: %lluu",
                                                                                memAddr + 8 * i,
                                                                                READ_DWORD(memAddr +
                                                                                           8 * i));
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                        }
                                        break;
                                    case 3:
                                        {
                                            switch (selected_size)
                                                {
                                                    case 0:
                                                        {
                                                            ULL endAddr = (V_TO_P(memAddr + 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr)
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: %c", memAddr + i,
                                                                        READ_BYTE(memAddr + i));
                                                                }
                                                        }
                                                        break;
                                                    case 1:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 2 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 2
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: 0x%x",
                                                                                memAddr + 2 * i,
                                                                                READ_HWORD(memAddr +
                                                                                           2 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 2:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 4 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 4
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text(
                                                                        "0x%llx: 0x%x",
                                                                        memAddr + 4 * i,
                                                                        READ_WORD(memAddr + 4 * i));
                                                                }
                                                        }
                                                        break;
                                                    case 3:
                                                        {
                                                            ULL endAddr =
                                                                (V_TO_P(memAddr + 8 * 100));
                                                            int stop = (endAddr >= MEM_ED)
                                                                           ? (MEM_ED - endAddr) / 8
                                                                           : 100;
                                                            for (int i = 0; i < stop; ++i)
                                                                {
                                                                    ImGui::Text("0x%llx: 0x%llx",
                                                                                memAddr + 8 * i,
                                                                                READ_DWORD(memAddr +
                                                                                           8 * i));
                                                                }
                                                        }
                                                        break;
                                                    default:
                                                        break;
                                                }
                                        }
                                        break;
                                    default:
                                        break;
                                }

                            ImGui::EndChild();

                            ImGui::SameLine();
                            ImGui::PushStyleVar(ImGuiStyleVar_ChildWindowRounding, 5.0f);
                            ImGui::BeginChild("Sub2", ImVec2(0, 600), true);
                            ImGui::Columns(1);
                            ImGui::Text("Memory sections");

                            if (ImGui::Button("Text", ImVec2(-1.0f, 0.0f)))
                                {
                                    memAddr = entry;
                                }

                            if (ImGui::Button("Data", ImVec2(-1.0f, 0.0f)))
                                {
                                    memAddr = dataAddr;
                                }
                            if (ImGui::Button("GP", ImVec2(-1.0f, 0.0f)))
                                {
                                    memAddr = reg[R_gp];
                                }
                            if (ImGui::Button("Stack", ImVec2(-1.0f, 0.0f)))
                                {
                                    memAddr = reg[R_sp];
                                }
                            ImGui::Separator();
                            ImGui::Text("Golbal variables");
                            for (int i = 0; i < symNum; i++)
                                {
                                    if (ImGui::Button(globalSymbol[i].name, ImVec2(-1.0f, 0.0f)))
                                        {
                                            memAddr = globalSymbol[i].addr;
                                        }
                                }
                            ImGui::EndChild();
                            ImGui::PopStyleVar();

                            ImGui::End();


                            if (_run)
                                {
                                    dState = Running;
                                }
                            else if (_step)
                                {
                                    keep_running = false;
                                    dState = Stepping;
                                }
                            else if (_reset)
                                {
                                    keep_running = false;
                                    setup();
                                    memset(InstBuf, 0, sizeof(InstBuf));
                                }
                            else if (_dump)
                                {
                                    load_from_file = false;
                                    start_to_load = false;
                                    load_false = false;
                                    show_elf = false;
                                    keep_running = false;
                                    fclose(file);
                                    dState = Setting;
                                }

                            if (show_elf)
                                {
                                    ImGui::SetNextWindowSize(ImVec2(800, 400), ImGuiSetCond_Once);
                                    ImGui::SetNextWindowPos(ImVec2(480, 5), ImGuiSetCond_Once);
                                    ImGui::Begin("ELF", &load_from_file, ImGuiWindowFlags_NoResize);
                                    ImGui::InputTextMultiline(
                                        "##source", elfBuf, IM_ARRAYSIZE(elfBuf),
                                        ImVec2(-1.0f, ImGui::GetTextLineHeight() * 28),
                                        ImGuiInputTextFlags_ReadOnly);
                                    ImGui::End();
                                }
                            if (keep_running)
                                dState = Running;
                        }
                        break;
                    case Running:
                        {
                            while (simulate_one_step() == 0)
                                ;
                            dState = Pausing;
                        }
                        break;
                    case Stepping:
                        {
                            bool res = simulate_one_step();
                            dState = Pausing;
                        }
                        break;
                    default:
                        break;
                }

            ImGui::Render();
            glfwSwapBuffers(window);
        }


    // Cleanup
    ImGui_ImplGlfwGL2_Shutdown();
    glfwTerminate();
    return 0;
}
