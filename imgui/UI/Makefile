CXX = g++
MAKE = make
EXE = UI
IMGUI = imgui_impl_glfw.o imgui.o imgui_demo.o imgui_draw.o

ifeq ($(UNAME_S), Linux) #LINUX
	LIBS = -lGL `pkg-config --static --libs glfw3`
	CXXFLAGS = -I UI/ `pkg-config --cflags glfw3`
	CXXFLAGS += -Wall -Wformat
	CFLAGS = $(CXXFLAGS)
endif

.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<

all: $(IMGUI)

clean:
	rm $(IMGUI)