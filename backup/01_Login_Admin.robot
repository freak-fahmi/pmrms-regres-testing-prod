*** Settings ***
Documentation  Regression Test Login Admin
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Scenario 1 Login Invalid
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Scenario 1: Login with username valid and password blank
Scenario 2: Login Invalid
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Scenario 2: Login with username blank and password valid
Scenario 3: Login Invalid
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Scenario 3: Login with username blank and password blank
Scenario 4: Login Invalid
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Scenario 4: Login with username tidak diketahui
Scenario 5: Login Valid
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Scenario 5: Login with username valid and password valid

*** Keywords ***
Scenario 1: Login with username valid and password blank
    [Documentation]  Feature: Login Invalid
    Given Login page is open
    And Input Valid Username
    Click button submit
    Verify Notif Blank Password
    [Teardown]  Finish Testcase
Scenario 2: Login with username blank and password valid
    [Documentation]  Feature: Login Invalid
    Given Login page is open
    And Input Valid Password
    When Click button submit
    Verify Notif blank username
    [Teardown]  Finish Testcase
Scenario 3: Login with username blank and password blank
    [Documentation]  Feature: Login Invalid
    Given Login page is open
    When Click button submit
    Verify Notif blank username & password
    [Teardown]  Finish Testcase
Scenario 4: Login with username tidak diketahui
    [Documentation]  Feature: Login Invalid
    Given Login page is open
    And Input Valid Username
    And Input Invalid Password
    When Click button submit
    Verify Notif Pengguna tidak diketahui
    [Teardown]  Finish Testcase
Scenario 5: Login with username valid and password valid
    [Documentation]  Feature: Login Valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Verify Home Page Penanggung Jawab is open
    [Teardown]  Finish Testcase