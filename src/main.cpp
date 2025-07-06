#include <iostream>
//#include "daeus.hpp"

#include <SFML/Graphics.hpp>

int main() {
    std::cout << "Hello, Digital World!" << std::endl;

    sf::RenderWindow window(sf::VideoMode({800u, 600u}), "Ventana SFML 3.0");

    while (window.isOpen()) {
        // SFML 3: pollEvent() devuelve std::optional<sf::Event>
        while (auto event = window.pollEvent()) {
            if (event->is<sf::Event::Closed>()) {
                window.close();
            }
        }

        window.clear(sf::Color::Black);
        window.display();
    }

    return 0;
}