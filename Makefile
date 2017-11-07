CXX = g++
MAKE = make
EXE = riscv-simulator
OBJS = UI.o Simulate.o Read_Elf.o
IMGUI = UI_LIB/imgui_impl_glfw.o UI_LIB/imgui.o UI_LIB/imgui_demo.o UI_LIB/imgui_draw.o
UNAME_S := $(shell uname -s)

ECHO_MESSAGE = "Linux"
LIBS = -lGL `pkg-config --static --libs glfw3`
CXXFLAGS = -I UI_LIB/ -I UI_LIB/glfw/include/ `pkg-config --cflags glfw3`
CXXFLAGS += -Wall -Wformat -g

all:$(EXE)
	rm $(OBJS)
	@echo Build complete for $(ECHO_MESSAGE)

$(EXE): imgui $(OBJS)
	$(CXX) -o $(EXE) $(OBJS) $(IMGUI) $(CXXFLAGS) $(LIBS)

ui_test: ui_test.o imgui
	$(CXX) -o ui_test ui_test.o $(IMGUI) $(CXXFLAGS) $(LIBS)
	rm ui_test.o

inst: ./Test/inst.o Simulate.o Read_Elf.o
	$(CXX) -o ./Test/inst ./Test/inst.o Simulate.o Read_Elf.o $(CXXFLAGS) $(LIBS)
	rm ./Test/inst.o Simulate.o Read_Elf.o

imgui:
	@echo Making IMGUI
	cd UI_LIB;$(MAKE)

.cpp.o:
	$(CXX) $(CXXFLAGS) $(LIBS) -c -o $@ $<

clean:
	rm $(EXE) $(OBJS) $(IMGUI)