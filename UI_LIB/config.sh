#!/bin/bash

PKG_CONFIG=$(pkg-config --cflags glfw3)
PKG_EXSITED=-I/usr/local/include

if [ "$PKG_CONFIG" != $PKG_EXSITED ]
then
    echo "  install glfw"
    sudo apt-get build-dep glfw
    sudo apt-get install cmake xorg-dev libglu1-mesa-dev
    cd glfw-3.2.1
    sudo cmake .
    sudo make
    sudo make install
else
    echo "  glfw exsited."
fi