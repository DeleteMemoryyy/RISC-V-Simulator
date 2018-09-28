CXX = g++
CC = gcc
MAKE = make
CMD1 =
CMD2 =
RM = rm

SOURCES = imgui_impl_glfw.cpp imgui_impl_opengl3.cpp imgui.cpp imgui_demo.cpp imgui_draw.cpp imgui_widgets.cpp
SOURCES += libs/gl3w/GL/gl3w.c
OBJS = $(addsuffix .o, $(basename $(notdir $(SOURCES))))

CXXFLAGS = -Wall -Wformat
CXXFLAGS += -Ilibs/gl3w
CXXFLAGS += -Ilibs/glfw/include
CFLAGS = $(CXXFLAGS)

ifeq ($(OS),Windows_NT) #WINDOWS
   RM = del
else
	UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
		CMD1 = chmod +x ./config.sh
		CMD2 = ./config.sh

		CXXFLAGS += `pkg-config --cflags glfw3`
		CFLAGS = $(CXXFLAGS)
	endif
endif

all: dep $(OBJS)

dep:
	$(CMD1)
	$(CMD2)

%.o:%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

%.o:libs/gl3w/GL/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-$(RM) $(OBJS)