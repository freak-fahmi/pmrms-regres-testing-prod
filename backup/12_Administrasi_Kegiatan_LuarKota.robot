*** Settings ***
Documentation  Regression Test Menu Administrasi Kegiatan Luar Kota
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/administrasi.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Administrasi Kegiatan Luar Kota
    [Documentation]  Regression Test Menu Administrasi Kegiatan Luar Kota
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User Mengklik Menu Kegiatan Luar Kota
    Scenario 3: User Mengklik Button Ajukan Kegiatan
    Scenario 4: User Mengklik Button Kembali dari page Form Pengajuan Kegiatan
    Scenario 5: User Mengklik Button Batal dari page Form Pengajuan Kegiatan

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User Mengklik Menu Kegiatan Luar Kota
    Click Menu Administrasi
    Click Menu Kegiatan Luar Kota
    Verify Page Kegiatan Luar Kota
Scenario 3: User Mengklik Button Ajukan Kegiatan
    Click Button Ajukan Kegiatan
    Verify Page Form Pengajuan Kegiatan
Scenario 4: User Mengklik Button Kembali dari page Form Pengajuan Kegiatan
    Click Button Kembali
    Verify Page Kegiatan Luar Kota
Scenario 5: User Mengklik Button Batal dari page Form Pengajuan Kegiatan
    Click Button Ajukan Kegiatan
    Click Button Batal
    Verify Page Kegiatan Luar Kota






