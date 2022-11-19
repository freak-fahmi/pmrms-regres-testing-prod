*** Settings ***
Library     SeleniumLibrary
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/projectcomponent.robot

*** Variables ***

*** Keywords ***
Click Menu Project Component
    Wait Until Element Is Visible    ${menuProjectComponent}
    Click Element    ${menuProjectComponent}
Verify Page Project Component
    Wait Until Element Is Visible    ${verifyProjectComponent}
    Page Should Contain Element      ${verifyProjectComponent}
Click Submenu Component
    Wait Until Element Is Visible    ${submenuComponent}    timeout=10s
    Click Element    ${submenuComponent}
Verify Submenu Component
    Wait Until Element Is Visible    ${verifySubmenuComponent}
    Page Should Contain Element      ${verifySubmenuComponent}
Closed Submenu Component
    Page Should Not Contain Button    ${verifySubmenuComponent}