CXX = g++
MAKE = make
EXE = Simulation
OBJS = Simulation.o Read_Elf.o
IMGUI = UI/imgui_impl_glfw.o UI/imgui.o UI/imgui_demo.o UI/imgui_draw.o
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

imgui:
	@echo Making IMGUI
	cd UI;$(MAKE)

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

clean:
	rm $(EXE) $(OBJS)