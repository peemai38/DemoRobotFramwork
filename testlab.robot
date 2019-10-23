*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${HOMEPAGE}    https://www.google.co.th
${CS URL}    www.cs.kku.ac.th
${BROWSER}    chrome

*** Test Cases ***
Go To homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
Google Page Should Be Open
    Location Should Contain    ${HOMEPAGE}
    Title Should Be    Google
Input URL
	Input CS    ${CS URL}
	Submit Form
	Wait Until Page Contains    www.cs.kku.ac.th
	Close Browser

*** Keywords ***
Input CS
    [Arguments]    ${input}
    Input Text    q    ${input}
