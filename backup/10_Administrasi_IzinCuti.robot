*** Settings ***
Documentation  Regression Test Menu Administrasi Izin Cuti
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/administrasi.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Administrasi Izin Cuti
    [Documentation]  Regression Test Menu Administrasi Izin Cuti
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik menu administrasi dan pilih izin cuti
    Scenario 3: User mengklik button ajukan cuti
    Scenario 4: User mengklik Button Kembali dari form Pengajuan Cuti
    Scenario 5: User mengklik Button Batal dari form Pengajuan Cuti


*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik menu administrasi dan pilih izin cuti
    Click Menu Administrasi
    Click Menu Izin Cuti
    Verify Page Izin Cuti
Scenario 3: User mengklik button ajukan cuti
    Click Button Ajukan Izin Cuti
    Verify Form Pengajuan Cuti
Scenario 4: User mengklik Button Kembali dari form Pengajuan Cuti
    Click Button Kembali
    Verify Page Izin Cuti
Scenario 5: User mengklik Button Batal dari form Pengajuan Cuti
    Click Button Ajukan Izin Cuti
    Click Button Batal
    Verify Page Izin Cuti






