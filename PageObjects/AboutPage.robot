*** Settings ***
Library   SeleniumLibrary
Variables   Webelementen.py



*** Variables ***
${ExpectedAboutTitle}  About us
${Oprichter}   Ralph van der Horst



*** Keywords ***
Ga naar de ABOUT US en controleer de titel
    Click Element    xpath://a[contains(text(),'About us')]
    Sleep  1s
    Capture Page Screenshot
    ${ActualAboutTitle}=  Get Title 
    Log   ActualTitel is : ${ActualAboutTitle}
    Should Contain    ${ActualAboutTitle}  ${ExpectedAboutTitle}

Zoek de naam van Oprichter op de pagina About us

    Page Should Contain    ${Oprichter}
    Scroll Element Into View    css:img[alt='Default alt text']
    Capture Element Screenshot    css:img[alt='Default alt text']
    Log  De oprichter van Bsure- Digital : ${Oprichter}