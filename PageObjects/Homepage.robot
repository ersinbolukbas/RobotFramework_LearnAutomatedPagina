*** Settings ***
Library   SeleniumLibrary
Variables   ../Resources/Webelementen.py



*** Variables ***
${url}   https://staging.learnautomatedtesting.com/
${browser}    chrome
${testautomator}  xpath://img[@alt='Outsystems testautomator']
${Click_testautomator}   xpath://div[@class='flex justify-end']//img[1]
${logo1}   css:h4 a
${logo2}   xpath:(//img[@alt='logo'])[1]
${Btn_Blog}   xpath://a[contains(text(),'Blog')]
${Btn_Courses}   xpath://a[contains(text(),'courses')]
${Btn_AboutUs}    xpath://a[contains(text(),'About us')]
${Btn_Contact}    xpath://*[@id="navbar"]/div[1]/div/ul/li[4]/a
${Btn_ToTheArticles}   xpath://a[contains(text(),'to the articles')]
${Selenium_Reclame}   css:img[alt='Selenium']



*** Keywords ***
Beginnen te testen
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Sleep    1s

Beeindigen te Testen
    Close Browser

#TS_LAT_001 en TG_001
Verifieer de Homepage
    #Logo's van pagina zijn zichtbaar 
    Element Should Be Visible   ${logo1} 
    Capture Element Screenshot    ${logo1} 
    Element Should Be Visible   ${logo2}
    Capture Element Screenshot    ${logo2}

#TS_LAT_001 en TG_002
Controleer of er een tutorial op HomePage staat
    #Een 
    Scroll Element Into View    ${testautomator}
    Capture Element Screenshot    ${testautomator}
    Element Should Be Visible      ${testautomator}
    Element Should Be Enabled    ${Click_testautomator}

#TS_LAT_001 en TG_003
Controleer de werking van alle button op HomePage
    #Met deze keyword kunnen we alle elementen controleren, het is zichtbaar en werken ze of niet. 
    Element Should Be Visible    ${Btn_Blog}
    Element Should Be Enabled    ${Btn_Blog}
    Element Should Be Visible    ${Btn_Courses}
    Element Should Be Enabled    ${Btn_Courses}
    Element Should Be Visible    ${Btn_AboutUs}
    Element Should Be Enabled    ${Btn_AboutUs}
    Element Should Be Visible    ${Btn_Contact}
    Element Should Be Enabled    ${Btn_Contact}
    Element Should Be Visible    ${Btn_ToTheArticles}
    Element Should Be Enabled    ${Btn_ToTheArticles}


    

    

