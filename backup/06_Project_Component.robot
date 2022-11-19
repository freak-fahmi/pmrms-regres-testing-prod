*** Settings ***
Documentation  Regression Test Project Component
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/projectcomponent.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid
Scenario 2: User mengklik sidebar menu project component
    Scenario : User mengklik sidebar menu project component
Scenario 3: User mengklik sub menu component
    Scenario : User mengklik sub menu component
Scenario 4: User mengklik icon min sub menu
    Scenario : User mengklik icon min sub menu
Close Browser
    Finish Testcase
*** Keywords ***
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario : User mengklik sidebar menu project component
    Click Menu Project Component
    Verify Page Project Component
Scenario : User mengklik sub menu component
    Click Submenu Component
    Verify Submenu Component
Scenario : User mengklik icon min sub menu
    Click Submenu Component
    Closed Submenu Component




