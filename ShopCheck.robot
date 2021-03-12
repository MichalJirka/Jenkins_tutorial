*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Test Teardown  Close All Browsers
*** Test Cases ***
Shop Check
    [Tags]    DEBUG
    Open Browser  https://mediamarkt.pl/konsole-i-gry/playstation-5/konsole-ps5?fbclid=IwAR0AJTDlvla_E9RU-QaRMVKHDC-_n5F2QxGwui5fiGnVAyTvne8sN9N5STk  chrome
    Sleep  3s
    ${HODNOTA}  Get Text  //h1[contains(text(),"PlayStation")]//span
    Should Be Equal As Strings  (1)  ${HODNOTA}
    
