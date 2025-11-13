#include <SFML/Graphics.hpp> 
#include "AABB.cpp"

int main()
{
    sf::RectangleShape noMovingRectangle({150.f,100.f});
    noMovingRectangle.setPosition({300.f,300.f});
    noMovingRectangle.setFillColor(sf::Color::Blue);

    sf::RectangleShape playerRectangle({100.f,100.f});
    playerRectangle.setPosition({0.f,0.f});
    playerRectangle.setFillColor(sf::Color::Green);

    // Create the main window
    sf::RenderWindow window(sf::VideoMode({800, 600}), "AABB");


    // Start the game loop
    while (window.isOpen())
    {
        // Process events
        while (const std::optional event = window.pollEvent())
        {
            // Close window: exit
            if (event->is<sf::Event::Closed>())
                window.close();
        }

        const auto mousePos = sf::Mouse::getPosition(window);
        playerRectangle.setPosition(static_cast<sf::Vector2f>(mousePos));

        if(RectVsRect<sf::RectangleShape,sf::Vector2f>(noMovingRectangle,playerRectangle))
            noMovingRectangle.setFillColor(sf::Color::Red);
        else
            noMovingRectangle.setFillColor(sf::Color::Blue);

        window.clear(sf::Color::White);
        window.draw(noMovingRectangle);
        window.draw(playerRectangle);
        window.display();
    }
}
