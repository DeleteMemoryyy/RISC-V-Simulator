CXX = g++
MAKE = make
EXE = riscv-simulator
OBJS = UI.o Simulate.o Read_Elf.o
IMGUI = UI_LIB/imgui_impl_glfw.o UI_LIB/imgui.o UI_LIB/imgui_demo.o UI_LIB/imgui_draw.o
UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Linux)
	ECHO_MESSAGE = "Linux"
		LIBS = -lGL `pkg-config --static --libs glfw3`
	CXXFLAGS = -I UI_LIB/ `pkg-config --cflags glfw3`
	CXXFLAGS += -Wall -Wformat -g
	CFLAGS = $(CXXFLAG)
endif

all:$(EXE)
	rm $(OBJS)
	@echo Build complete for $(ECHO_MESSAGE)

$(EXE):$(OBJS) imgui
	$(CXX) -o $(EXE) $(OBJS) $(IMGUI) $(CFLAGS) $(LIBS)

ui_test: ui_test.o imgui
	$(CXX) -o ui_test ui_test.o $(IMGUI) $(CFLAGS) $(LIBS)
	rm ui_test.o

inst: inst.o Simulate.o Read_Elf.o
	$(CXX) -o inst inst.o Simulate.o Read_Elf.o $(CFLAGS) $(LIBS)

imgui:
	@echo Making IMGUI
	cd UI_LIB;$(MAKE)

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

clean:
	rm $(EXE) $(OBJS) $(IMGUI)