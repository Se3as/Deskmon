#include "utils/V-Pet-Utils.hpp"

namespace Digivice_Size {

    unsigned int Digivice_W() {
        return sf::VideoMode::getDesktopMode().width;
    }

    unsigned int Digivice_H() {
        return sf::VideoMode::getDesktopMode().height;
    }

}