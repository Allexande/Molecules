#include "../include/GraphicsLib.h"

bool OpenWindow(size_t height, size_t width) {

    if (height < 1 || width < 1) {
        return false;
    }

    return txCreateWindow(width, height) && txTextCursor(false);
}

bool PrepareToRender() {

    txBegin();

    return true;
}

bool CompleteRender() {

    txEnd();

    return false;
}

color_t* GetVideoMemory() {

    return (color_t*) txVideoMemory();
}
