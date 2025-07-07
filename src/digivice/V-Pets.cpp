#include "digivice/V-Pets.hpp"

V_Pet::V_Pet() : digiworld(sf::VideoMode({static_cast<unsigned>(Digivice_Size::Digivice_W()), 600u}), "Digital World") {}

void V_Pet::Display() {
    digiworld.display();
}

void V_Pet::Clear() {
    digiworld.clear(sf::Color::Transparent);
}

void V_Pet::Handle_Closure() {
    while(digiworld.isOpen()) {
        while(auto event = digiworld.pollEvent()) {
            if(event->is<sf::Event::Closed>()) {
                digiworld.close();
            }
        }
    }
}

void V_Pet::Handle_Recolor() {
    Display();
}

V_Pet::~V_Pet() {}