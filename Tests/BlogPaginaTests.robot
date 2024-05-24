*** Settings ***
Documentation  LearnAutomated Website Blog pagina demo test
Resource     ../PageObjects/Homepage.robot
Resource     ../PageObjects/BlogPage.robot

Test Setup      Homepage.Beginnen te testen
Test Teardown   Homepage.Beeindigen te Testen

*** Variables ***




*** Test Cases ***
#TS_LAT_002 - TG_001 - TG_002
Ga naar de BLOGPAGINA en controleer de titel
    [Documentation]  Laten we naar de BLOGPAGINA gaan en verifiëren dat we zijn ingelogd.
    BlogPage.Ga naar de BLOGPAGINA
    BlogPage.Verifieer de BLOGPAGINA
    BlogPage.Tel hoeveel trainingen je hebt en de trainingen zijn zichtbaar
    Sleep  1s

#TS_LAT_002 - TG_003
Controleer of SearchBox werking
    BlogPage.Ga naar de BLOGPAGINA
    BlogPage.Controleer of SearchBox actief is
    Sleep    1s

#TS_LAT_003 - TG_001
Contoleer of filter TOOLS
    BlogPage.Ga naar de BLOGPAGINA
    BlogPage.Contoleer of filter TOOLS
    Sleep    1s

Contoleer of filter TESTING
    BlogPage.Ga naar de BLOGPAGINA
    BlogPage.Contoleer of filter TESTING
    Sleep    1s

Contoleer of filter PROGRAMMING LANGUAGE
    BlogPage.Ga naar de BLOGPAGINA
    BlogPage.Contoleer of filter PROGRAMMING LANGUAGE
    Sleep  1s
    
