CXX = g++
MAKE = make
EXE = riscv-simulator
OBJS = UI.o Simulate.o Read_Elf.o
DEBUG_OBJS = debug.o Simulate.o Read_Elf.o
INSTTEST_OBJS = InstTest.o Simulate.o Read_Elf.o
LIBPATH = UI_LIB/
IMGUI = $(LIBPATH)imgui_impl_glfw.o $(LIBPATH)imgui_impl_opengl3.o $(LIBPATH)imgui.o $(LIBPATH)imgui_demo.o $(LIBPATH)imgui_draw.o $(LIBPATH)imgui_widgets.o $(LIBPATH)gl3w.o

UNAME_S := $(shell uname -s)
ECHO_MESSAGE = "Linux"

CXXDEFINES =
CXXDEFINES += -DBYPASS	# enable data bypass
CXXDEFINES += -DPREDICT	# enable dynamic PC prediction
# CXXDEFINES += -DPRINT_MODE	# print stage mode status
# CXXDEFINES += -DPRINT_BYPASS	# print bypass info
LIBS = -lGL `pkg-config --static --libs glfw3`
CXXFLAGS = -Wall -Wformat
CXXFLAGS += -g
CXXFLAGS += -I$(LIBPATH)
CXXFLAGS += -I$(LIBPATH)libs/gl3w
CXXFLAGS += -I$(LIBPATH)libs/glfw/include
CXXFLAGS += `pkg-config --cflags glfw3`
CXXFLAGS += $(CXXDEFINES)

all:$(EXE)
	rm $(OBJS)
	@echo Build complete for $(ECHO_MESSAGE)

.cpp.o:
	$(CXX) $(CXXFLAGS) $(LIBS) -c -o $@ $<

imgui:
	@echo making imgui
	cd UI_LIB;$(MAKE)

$(EXE): imgui $(OBJS)
	$(CXX) -o $(EXE) $(OBJS) $(IMGUI) $(CXXFLAGS) $(LIBS)

ui_test: imgui ui_test.o
	$(CXX) -o ui_test ui_test.o $(IMGUI) $(CXXFLAGS) $(LIBS)
	rm ui_test.o

debug: $(DEBUG_OBJS)
	$(CXX) -o debug $(DEBUG_OBJS) $(CXXFLAGS) $(LIBS)

InstTest: $(INSTTEST_OBJS)
	$(CXX) -o InstTest $(INSTTEST_OBJS) $(CXXFLAGS) $(LIBS)

clean:
	rm *.o UI_LIB/*.o $(EXE) ui_test debug InstTest