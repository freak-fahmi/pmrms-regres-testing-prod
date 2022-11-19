*** Settings ***
Documentation  Regression Test Menu Pustaka
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/pustaka.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario 1: Login with username valid and password valid
Scenario 2: User mengklik menu pustaka
    Scenario 2: User mengklik menu pustaka
Scenario 3: User mengklik button upload file
    Scenario 3: User mengklik button upload file
Scenario 4: User Mengklik button batal from page upload file
    Scenario 4: User Mengklik button batal from page upload file
Scenario 5: User Input Data MoM, Upload File dan Save
    Scenario 5: User Input Data MoM, Upload File dan Save
Scenario 6: User Input Data POM, Upload File dan Save
    Scenario 6: User Input Data POM, Upload File dan Save
Scenario 7: User Input Data AWP, Upload File dan Save
    Scenario 7: User Input Data AWP, Upload File dan Save
Close Browser
    Finish Testcase

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik menu pustaka
    Click Menu Pustaka
    Verify Page Dokumen Umum
Scenario 3: User mengklik button upload file
    Click Button Upload File
    Verify Page Upload File
Scenario 4: User Mengklik button batal from page upload file
    Click Button Batal
    Verify Page Dokumen Umum
Scenario 5: User Input Data MoM, Upload File dan Save
    Click Button Upload File
    Input Upload File MOM
    Click Button Simpan
Scenario 6: User Input Data POM, Upload File dan Save
    Click Button Upload File
    Input Upload File POM
    Click Button Simpan
Scenario 7: User Input Data AWP, Upload File dan Save
    Click Button Upload File
    Input Upload File AWP
    Click Button Simpan




