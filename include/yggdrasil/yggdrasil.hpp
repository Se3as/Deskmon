#pragma once

#include "digivice/V-Pets.hpp"
#include "digicore/Digimon.hpp"
#include "axioms/Animations_Axiom.hpp"

class Yggdrasil {

private:
    V_Pet digivice;
    Digimon partner;

public:
    Yggdrasil();
    ~Yggdrasil();

    void run();

};