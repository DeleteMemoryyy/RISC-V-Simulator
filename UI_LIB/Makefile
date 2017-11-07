CXX = g++
MAKE = make
EXE = UI
IMGUI = imgui_impl_glfw.o imgui.o imgui_demo.o imgui_draw.o

LIBS = -lGL `pkg-config --static --libs glfw3`
CXXFLAGS = -I glfw/include/ `pkg-config --cflags glfw3`
CXXFLAGS += -Wall -Wformat -g

all: dep $(IMGUI)

dep:
	chmod a+x ./config.sh
	./config.sh

.cpp.o:
	$(CXX) $(CXXFLAGS) $(LIBS) -c -o $@ $<

clean:
	rm $(IMGUI)