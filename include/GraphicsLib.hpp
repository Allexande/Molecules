#ifndef GRAPHICS_GRAPHICSLIB_H
#define GRAPHICS_GRAPHICSLIB_H

#include "../include/TXLib.h"

/*
union colorData {
    RGBQUAD RGBA;
    __int32 data;
};

typedef colorData color_t;
*/

typedef RGBQUAD color_t;

typedef COLORREF rgb_t;

bool OpenWindow(size_t height, size_t width);

bool PrepareToRender();
bool CompleteRender();

color_t* GetVideoMemory();

#endif //GRAPHICS_GRAPHICSLIB_H
