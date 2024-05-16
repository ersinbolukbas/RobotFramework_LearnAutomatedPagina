*** Settings ***
Documentation  Envoudig demo test
Resource     ../PageObjects/Homepage.robot
Resource     ../PageObjects/AboutPage.robot

Test Setup      Homepage.Beginnen te testen
Test Teardown   Homepage.Beeindigen te Testen

*** Variables ***




*** Test Cases ***

Ga naar de ABOUT US en controleer de titel
    [Documentation]   Laten we naar de AboutUsPagina gaan en verifiëren dat we zijn ingelogd.

    AboutPage.Ga naar de ABOUT US en controleer de titel
    AboutPage.Zoek de naam van Oprichter op de pagina About us