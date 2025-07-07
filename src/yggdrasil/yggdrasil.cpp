#include "yggdrasil/yggdrasil.hpp"

Yggdrasil::Yggdrasil() {}

void Yggdrasil::run() {
    partner.Profile();
    digivice.Handle_Recolor();
    digivice.Handle_Closure();
}

Yggdrasil::~Yggdrasil() {
    // Aquí puedes poner código si necesitas liberar recursos,
    // o dejarlo vacío si no hace nada.
}