CXX = g++
MAKE = make
EXE = riscv-simulator
OBJS = UI.o Simulate.o Read_Elf.o Storage.o
CACHE_OBJS = CacheTest.o Simulate.o Read_Elf.o Storage.o
INSTTEST_OBJS = InstTest.o Simulate.o Read_Elf.o Storage.o
IMGUI = UI_LIB/imgui_impl_glfw.o UI_LIB/imgui.o UI_LIB/imgui_demo.o UI_LIB/imgui_draw.o
UNAME_S := $(shell uname -s)
ECHO_MESSAGE = "Linux"

CXXDEFINES =
CXXDEFINES += -DBYPASS	# enable data bypass
CXXDEFINES += -DPREDICT	# enable dynamic PC prediction
CXXDEFINES += -DCACHE_L3
# CXXDEFINES += -DPRINT_MODE	# print stage mode status
# CXXDEFINES += -DPRINT_BYPASS	# print bypass info
LIBS = -lGL `pkg-config --static --libs glfw3`
CXXFLAGS = -I UI_LIB/ -I UI_LIB/glfw/include/ `pkg-config --cflags glfw3`
CXXFLAGS += -Wall -Wformat -g
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

Cache: $(CACHE_OBJS)
	$(CXX) -o CacheTest $(CACHE_OBJS) $(CXXFLAGS) $(LIBS)

InstTest: $(INSTTEST_OBJS)
	$(CXX) -o InstTest $(INSTTEST_OBJS) $(CXXFLAGS) $(LIBS)

Storage:
	$(CXX) -o Storage.o -c Storage.cpp
	$(CXX) -o StorageTest StorageTest.cpp Storage.o -Wall -Wformat -g

clean:
	rm *.o UI_LIB/*.o $(EXE) ui_test CacheTest InstTest StorageTest