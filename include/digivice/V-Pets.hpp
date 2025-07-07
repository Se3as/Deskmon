#pragma once

#include "utils/V-Pet-Utils.hpp"

#include <windows.h>


class V_Pet {

private:
    sf::RenderWindow digiworld;

public:
    V_Pet();
    ~V_Pet();

    void Display();
    void Clear();

    void Handle_Closure();

    void Handle_Recolor();

};