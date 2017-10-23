CXX = g++
MAKE = make
EXE = IMGUI
OBJS = main.o 
IMGUI = UI/imgui_impl_glfw.o UI/imgui.o UI/imgui_demo.o UI/imgui_draw.o

UNAME_S := $(shell uname -s)


ifeq ($(UNAME_S), Linux) #LINUX
	ECHO_MESSAGE = "Linux"
	LIBS = -lGL `pkg-config --static --libs glfw3`
	CXXFLAGS = -I UI/ `pkg-config --cflags glfw3`
	CXXFLAGS += -Wall -Wformat
	CFLAGS = $(CXXFLAGS)
endif

.cpp.o:
	$(CXX) $(CFLAGS) -c -o $@ $<

all: $(EXE)
	@echo Build complete for $(ECHO_MESSAGE)

$(EXE): $(OBJS) imgui
	$(CXX) -o $(EXE) $(OBJS) $(IMGUI) $(CFLAGS) $(LIBS)

imgui:
	@echo Making IMGUI
	cd UI;$(MAKE)

clean:
	cd UI;$(MAKE) clean
	rm $(EXE) $(OBJS)

