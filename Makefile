CXX = g++
MAKE = make
EXE = Simulation
OBJS = Simulation.o Read_Elf.o

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Linux)
	ECHO_MESSAGE = "Linux"
	CXXFLAG = -Wall -Wformat -g
	CFLAGS = $(CXXFLAG)
endif

all:$(EXE)
	rm $(OBJS)
	@echo Build complete for $(ECHO_MESSAGE)

$(EXE):$(OBJS)
	$(CXX) -o $(EXE) $(OBJS) $(CFLAGS)

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

clean:
	rm $(EXE) $(OBJS)