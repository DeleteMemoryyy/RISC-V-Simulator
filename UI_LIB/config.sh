#!/bin/bash

PKG_CONFIG=$(pkg-config --cflags glfw3)
PKG_EXSITED='-I/usr/include/libdrm'

if [ $PKG_CONFIG != $PKG_EXSITED ]
then
    sudo add-apt-repository -y ppa:pyglfw/pyglfw
    sudo apt-add-repository --yes ppa:zoogie/sdl2-snapshots
    sudo apt-get update -qq
    sudo apt-get install -y --no-install-recommends libglfw3-dev libxrandr-dev libxi-dev libxxf86vm-dev libsdl2-dev
else
    echo "  glfw exsited."
fi