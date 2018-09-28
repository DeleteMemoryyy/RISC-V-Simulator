#ifndef UI_H_
#define UI_H_

#include "Simulate.h"
#include "UI_LIB/imgui.h"
#include "UI_LIB/imgui_impl_glfw.h"
#include "UI_LIB/imgui_impl_opengl3.h"
#include "UI_LIB/imgui_internal.h"
#include <unistd.h>
#include <GL/gl3w.h>
#include <GLFW/glfw3.h>
#include <cstdio>

enum DisplayState
{
    Setting,
    Running,
    Stepping,
    Pausing
};

#endif
