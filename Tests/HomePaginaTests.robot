*** Settings ***
Documentation  Envoudig demo test
Resource     ../PageObjects/Homepage.robot

Test Setup      Homepage.Beginnen te testen
Test Teardown   Homepage.Beeindigen te Testen

*** Variables ***




*** Test Cases ***

Controleer of we op HomePage zijn
    [Documentation]  Laten we verifiëren dat we zijn ingelogd op HomePage.

    Homepage.Verifieer de Homepage
    Homepage.Controleer of er een tutorial op HomePage staat
    Homepage.Controleer de werking van alle button op HomePage

