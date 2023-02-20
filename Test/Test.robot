*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Go to Device management page
    open browser    https://test.thelma.stream.carexs.io/app/authentication/signin  chrome
    maximize browser window
    page should contain element    //html/body/devicexs-app/devicexs-signin/devicexs-slider-wrapper/div/div[1]/section
    input text      id=mat-input-0      admin@carexs-streams.com
    input password    id=mat-input-1    T&s%aA@8n0Yd5VuF
    click button    //*[@id="Login"]/div[2]/button
    sleep    3s
    page should contain element    //html/body/devicexs-app/devicexs-home/div/div[2]/devicexs-dashboard/div
    click element    //html/body/devicexs-app/devicexs-home/div/div[2]/devicexs-dashboard/div/div[1]/div[1]/div[1]/a
    sleep    3s
    page should contain    Alle apparaten
    close browser
*** Keywords ***
