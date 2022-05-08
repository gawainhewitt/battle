## User Story 2 

As Player 1,<br>
So I can win a game of Battle,<br>
I want to attack Player 2, and I want to get a confirmation

```mermaid
classDiagram
    Animal <|-- Duck
    Animal <|-- Fish
    Animal <|-- Zebra
    Animal : +int age
    Animal : +String gender
    Animal: +isMammal()
    Animal: +mate()
    class Duck{
        +String beakColor
        +swim()
        +quack()
    }
    class Fish{
        -int sizeInFeet
        -canEat()
    }
    class Zebra{
        +bool is_wild
        +run()
    }
```



    Player_1    >>    attack    >>    Player_2

                          |
                          |
                          |
                          V

                confirmation of attack

setup feature test
click attack button
expect page to contain "confirmation of attack"