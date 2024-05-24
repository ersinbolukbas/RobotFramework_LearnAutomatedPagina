*** Settings ***
Library   SeleniumLibrary







*** Keywords ***
Ga naar de BLOGPAGINA
    Click Element    xpath://a[contains(text(),'Blog')]
    Sleep  1s
    Capture Page Screenshot

Verifieer de BLOGPAGINA
    ${ActualBlogTitle}=  Get Title 
    Log   ActualTitel is : ${ActualBlogTitle}
    Should Contain    ${ActualBlogTitle}  ${ExpectedBlogTitle}

Tel hoeveel trainingen je hebt en de trainingen zijn zichtbaar
    # Voor pagina Blog subtitle
    Element Should Be Visible    xpath:/html/body/main/section[2]/div/div/div[3]/div
    ${element_count}=    Get Element Count    xpath:/html/body/main/section[2]/div/div/div[3]/div
    Log    We hebben totaal in blog pagina : ${element_count} onlinetraining
    IF    ${element_count} == ${ExpectedArtikelAantal}
        Log To Console    Er zijn 31 onlinetrainingen
    ELSE
        Log To Console    Controleer je telling code
    END
    
Controleer of SearchBox actief is
    # Vul de zoekbar "Katalon" in
    Input Text    ${SearchBox}    ${SearchWord}
    Sleep    1s
    # Klik de eerste element van uitslag van je zoekt
    Click Element    ${SearchBox_firstResult}
    ${ActualTitle}=  Get Title
    # Verifieer de uitslag
    Should Contain  ${ActualTitle}  ${SearchWord}
    Log To Console   SearchBox werkt goed.

Contoleer of filter TOOLS
    Click Element    ${ToolsFilter}
    Sleep  0.5s
    Click Element    ${ToolsFilter_Katalon}
    Sleep  0.5s

    # Controleer of uitslag van klikken.
    Capture Page Screenshot
    ${element_count}=    Get Element Count    xpath:/html/body/main/section[2]/div/div/div[3]/div
    Log    We hebben totaal in blog pagina : ${element_count} onlinetraining
    IF    ${element_count} == ${ExpectedArtikelAantal}
        Fail    Katalon button doet het niet meer
    ELSE IF  ${element_count} <= 5
        Log To Console    Katalon button doet het wel
    END
    
Contoleer of filter TESTING
    Click Element    ${TestingFilter}
    Sleep  0.5s
    Click Element    ${TestingFilter_Regressie}
    Sleep  0.5s

    # Controleer of uitslag van klikken.
    Capture Page Screenshot
    ${element_count}=    Get Element Count    xpath:/html/body/main/section[2]/div/div/div[3]/div
    Log    We hebben totaal in blog pagina : ${element_count} onlinetraining
    IF    ${element_count} == ${ExpectedArtikelRegressie}
        Log To Console    Regression Test button doet het wel
    ELSE IF  ${element_count} == ${ExpectedArtikelAantal}
        Fail    Regression Test button doet het niet meer.
    END


Contoleer of filter PROGRAMMING LANGUAGE
    Click Element    ${ProgrammingLanguageFilter}
    Sleep  0.5s
    Click Element    ${Filter_ProgrammingLanguage}
    Sleep  0.5s

    # Controleer of uitslag van klikken.
    Capture Page Screenshot
    ${element_count}=    Get Element Count    xpath:/html/body/main/section[2]/div/div/div[3]/div
    Log    We hebben totaal in blog pagina : ${element_count} onlinetraining
    IF    ${element_count} == ${ExpectedArtikelPython}
        Log To Console    Python button doet het wel
    ELSE IF  ${element_count} == ${ExpectedArtikelAantal}
        Fail    Python button doet het NIET meer.          
    END


Contoleer of filter SORT BY
    Click Element    ${SortByFilter}
    Sleep  0.5s
    Click Element    ${Filter_SortByOldest}
    Sleep  0.5s

    # Controleer of uitslag van klikken.
    Capture Page Screenshot







    
*** Variables ***
${Btn_Blog}   xpath://a[contains(text(),'Blog')]
${ExpectedBlogTitle}  Blog
${ExpectedArtikelAantal}  31
${SearchBox}   css:input[placeholder=Search]
${SearchBox_firstResult}  xpath://ol/li/div/p/a
${SearchWord}  Katalon
${ToolsFilter}  xpath://p[@data-value='1']
${ToolsFilter_Katalon}   css:li[data-id=testing-katalon]
${ExpectedArtikelRegressie}  2
${TestingFilter}   xpath:(//p[@data-value='1'])[2]
${TestingFilter_Regressie}   css:li[data-id='testing-regression_test']
${ProgrammingLanguageFilter}   xpath:(//p[@data-value='1'])[4]
${Filter_ProgrammingLanguage}   css:li[data-id='theme-python']
${ExpectedArtikelPython}  3
${SortByFilter}   xpath:(//p[@data-value='1'])[5]
${Filter_SortByOldest}   css:li[data-id='2']