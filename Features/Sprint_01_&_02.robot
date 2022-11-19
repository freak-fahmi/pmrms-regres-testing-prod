*** Settings ***
Documentation  Regression Test Sprint 1 & 2
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot
Resource    ../Keyword/awp.robot
Resource    ../Keyword/projectcomponent.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
#======= Fitur Login Admin====#
#01 Scenario 1: Login with username valid and password blank
#    [Documentation]  Regression Login Admin
#    [Tags]  Functionality
#    Login page is open
#    Input Valid Username
#    Click button submit
#    Verify Notif Blank Password
#    [Teardown]  Finish Testcase
#
#01 Scenario 2: Login with username blank and password valid
#    [Documentation]  Regression Login Admin
#    [Tags]  Functionality
#    Login page is open
#    Input Valid Password
#    Click button submit
#    Verify Notif blank username
#    [Teardown]  Finish Testcase
#01 Scenario 3: Login with username blank and password blank
#    [Documentation]  Regression Login Admin
#    [Tags]  Functionality
#    Login page is open
#    Click button submit
#    Verify Notif blank username & password
#    [Teardown]  Finish Testcase
#
#01 Scenario 4: Login with username valid and password valid
#    [Documentation]  Regression Login Admin
#    [Tags]  Functionality
#    Login page is open
#    Input Valid Username
#    Input Valid Password
#    Click button submit
#    Verify Home Page Penanggung Jawab is open
#    [Teardown]  Finish Testcase

#==========Negative Test Case==========#
Scenario 1 : Login dengan akun tidak terdaftar
    [Documentation]  Regression Login Admin
    [Tags]  Functionality
    Login page is open
    Input Valid Username
    Input Invalid Password
    Click button submit
    Verify Notif Pengguna tidak diketahui
    [Teardown]  Finish Testcase

#07 Positive Test Scenario 1: Login komponen 1
#    Login page is open
#    input text    ${username}       atikqurrotuayun@madrasah.kemenag.go.id
#    input text    ${pwd}            ${adm_pwd}
#    Click button submit
#    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
#    Page Should Contain Element    ${Verify_Profile}
#    [Teardown]  Finish Testcase
#
#07 Positive Test Scenario 2: Login komponen 2
#    Login page is open
#    input text    ${username}       yusufhadiyudha@madrasah.kemenag.go.id
#    input text    ${pwd}            ${adm_pwd}
#    Click button submit
#    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
#    Page Should Contain Element    ${Verify_Profile}
#    [Teardown]  Finish Testcase
#
#07 Positive Test Scenario 3: Login komponen 3
#    Login page is open
#    input text    ${username}       raisarindraidah@madrasah.kemenag.go.id
#    input text    ${pwd}            ${adm_pwd}
#    Click button submit
#    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
#    Page Should Contain Element    ${Verify_Profile}
#    [Teardown]  Finish Testcase
#
#07 Positive Test Scenario 4 : login komponen 4
#    Login page is open
#    input text    ${username}       nadimiqbal@madrasah.kemenag.go.id
#    input text    ${pwd}            ${adm_pwd}
#    Click button submit
#    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
#    Page Should Contain Element    ${Verify_Profile}
#    [Teardown]  Finish Testcase
#
##=============Menu AWP============
#Scenario 1: Menampilkan data AWP
#    Login page is open
#    Input Valid Username
#    Input Valid Password
#    Click button submit
#    Verify Home Page is open
#    Click Menu AWP
#    Verify Page AWP
#    [Teardown]  Finish Testcase
#
##==============Project Component==================
#48 Scenario : User Login project Component
#    Given Login page is open
#    And Input Valid Username
#    And Input Valid Password
#    When Click button submit
#    Then Verify Home Page is open
#48 Scenario : User Click Menu Project Component
#   Click Menu Project Component
#   Verify Page Project Component
#48 Scenario : sub menu component
#   Click Submenu Component
#   Verify Submenu Component
#48 Scenario : icon min sub menu
#   Click Submenu Component
#   Closed Submenu Component
#   [Teardown]  Finish Testcase
