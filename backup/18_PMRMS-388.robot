*** Settings ***
Documentation  Regression Test Menu Event
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/event.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Test Cases ***
Scenario 1 [Positive Test] Melihat Event
    Given Login with username valid and password valid
    And User go to Event Saya tab
    When User click Event Selesai tab
    Then Event Selesai popup shown
    When Close Modal popup
    And User click Event Berjalan tab
    Then Event Berjalan popup shown
    When Close Modal popup
    And User click Event Akan Datang tab
    Then Event Akan Datang popup shown
    When Close Modal popup
    And User click Event Berjalan tab
    And User search data using predefined keyword
    Then Search Result should be visible
    When Close Modal popup
    And User click Event Akan Datang tab
    And User search data using predefined keyword
    Then Search Result should be visible

*** Keywords ***
Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

User go to Event Saya tab
    Wait Until Element Is Visible    ${spanDashboardEventSaya}    timeout=10s
    Click Element    ${spanDashboardEventSaya}
    Wait Until Element Is Visible    ${spanDashboardEventSelesai}    timeout=10s
    Wait Until Element Is Visible    ${spanDashboardEventBerjalan}    timeout=10s
    Wait Until Element Is Visible    ${spanDashboardEventAkanDatang}    timeout=10s

Event Selesai popup shown
    Wait Until Element Is Visible    ${modalTitleEventPopup}    timeout=10s
    Element Should Contain    ${modalTitleEventPopup}    Daftar Event Selesai

Event Berjalan popup shown
    Wait Until Element Is Visible    ${modalTitleEventPopup}    timeout=10s
    Element Should Contain    ${modalTitleEventPopup}    Daftar Event Berjalan

Event Akan Datang popup shown
    Wait Until Element Is Visible    ${modalTitleEventPopup}    timeout=10s
    Element Should Contain    ${modalTitleEventPopup}    Daftar Event Akan Datang

User click Event Selesai tab
    Click Element    ${spanDashboardEventSelesai}

User click Event Berjalan tab
    Click Element    ${spanDashboardEventBerjalan}

User click Event Akan Datang tab
    Click Element    ${spanDashboardEventAkanDatang}

Close Modal popup
    Wait Until Element Is Visible    ${btnClose}    timeout=10s
    Click Element    ${btnClose}

User search data using predefined keyword
    Wait Until Element Is Visible    ${inputModalSearchEvent}    timeout=10s
    Input Text    ${inputModalSearchEvent}    automation
    Click Element    ${btnCari}
    Sleep    2s

Search Result should be visible
    Wait Until Element Is Visible    ${tdSearchEventFirstNamaEvent}    timeout=10s
    Element Should Contain    ${tdSearchEventFirstNamaEvent}    automation