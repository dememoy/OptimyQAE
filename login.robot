*** Settings ***
Library           ExtendedSelenium2Library
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    3
    Click Button  id:cookie-allow-necessary-button
    Set Selenium Speed    3
    Go To Login Page
    Set Selenium Speed    3
    Input Email  optimyautomationtester@gmail.com  
    Input Password  yRMhojb7
    Click Button  Login
    Click Element  link=Submit a new application
    Set Selenium Speed    3
    Scroll Element Into View  css:.page-footer
    Wait Until Element is visible    css:a.btn:nth-child(2)     timeout=5s
    Click Element  css:a.btn:nth-child(2)
    Input First Name    Juan
    Input Last Name   Dela Cruz
    Set Selenium Speed    2
    Input Address 1  block 1 lot 2
    Input Text  css:.ui-autocomplete-input  1000
    Select From List By Index  name:a4486775-94c7-5a9e-9f67-24c21c95f025::7e595970-fc12-558c-9eaf-385735fcae6b  BE
    