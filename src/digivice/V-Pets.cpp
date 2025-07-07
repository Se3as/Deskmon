#include "digivice/V-Pets.hpp"

V_Pet::V_Pet() : digiworld(sf::VideoMode({static_cast<unsigned>(Digivice_Size::Digivice_W()), 600u}), "Digital World") {

    
    // Obtener el HWND de la ventana de SFML
    HWND hwnd = digiworld.getSystemHandle();

    // Hacer la ventana "layered" y permitir transparencia
    SetWindowLong(hwnd, GWL_EXSTYLE,
                  GetWindowLong(hwnd, GWL_EXSTYLE) | WS_EX_LAYERED | WS_EX_TRANSPARENT);

    // Ajustar el color que se volverá transparente (aquí: negro puro)
    SetLayeredWindowAttributes(hwnd, RGB(0, 0, 0), 0, LWA_COLORKEY);

}

void V_Pet::Display() {
    digiworld.display();
}

void V_Pet::Clear() {
    digiworld.clear(sf::Color::Black);
}

void V_Pet::Handle_Closure() {
    sf::Event event;
    while (digiworld.isOpen()) {
        while (digiworld.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                digiworld.close();
            }
        }
    }
}

void V_Pet::Handle_Recolor() {
    Display();
}

V_Pet::~V_Pet() {}