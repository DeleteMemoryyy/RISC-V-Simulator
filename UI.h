#ifndef UI_H_
#define UI_H_

#include <GLFW/glfw3.h>
#include "UI_LIB/imgui.h"
#include "UI_LIB/imgui_impl_glfw.h"
#include "UI_LIB/imgui_internal.h"
#include "Simulate.h"

enum DisplayState
{
    Setting,
    Running,
    Stepping,
    Pausing
};

#endif
