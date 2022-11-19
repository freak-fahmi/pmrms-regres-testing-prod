*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/projectcomponent.robot
Resource            ../../Keyword/awp.robot
Resource            ../../Keyword/kegiatan.robot
Resource            ../../Keyword/event.robot
Resource            ../../Keyword/pustaka.robot
Resource            ../../Keyword/monev.robot
Resource            ../../Keyword/administrasi.robot
Resource            ../../Keyword/konfigurasi.robot


*** Test Cases ***
###################################
#    Menu aktif
###################################
PMRMS-B-5 Scenario : User Login project Component
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
PMRMS-B-5 Scenario 1: User Click Menu Project Component
   Click Menu Project Component
   Verify Page Project Component

PMRMS-B-5 Scenario 2 :User pilih menu AWP
    Click Menu AWP
    Verify Page AWP
PMRMS-B-5 Scenario 3 :User pilih menu Kegiatan
    Click Menu Kegiatan
    Verify Page Kegiatan
PMRMS-B-5 Scenario 4 :User pilih menu Event
   Click Menu Event
   Verify Page Event
PMRMS-B-5 Scenario 5 :User pilih menu pustaka
    Click Menu Pustaka
    Verify Page Dokumen Umum
PMRMS-B-5 Scenario 6 :User pilih menu monev
    Click menu monev
PMRMS-B-5 Scenario 7 :User pilih menu Administrasi
    Click Menu Administrasi
PMRMS-B-5 Scenario 8 : User pilih menu Konfigurasi
    Click Menu Konfigurasi
PMRMS-B-5 Scenario 9 : User Pilih menu AWP, pilih button lihat
    Click Menu AWP
    Verify Page AWP
    Click Detail Awp
    Verify Detail Awp
PMRMS-B-5 Scenario 10 : User Pilih menu Kegiatan , pilih button lihat
    Click Menu Kegiatan
    Verify Page Kegiatan
    Click Button Lihat Kegiatan
PMRMS-B-5 Scenario 11 : User Pilih menu Event , pilih button lihat
    Click Menu Event
    Verify Page Event
    Click lihat button
PMRMS-B-5 Scenario 12 : User Pilih menu Monev Output pilih target, pilih button edit
    Click Monev Output Target
    Click Button Edit
PMRMS-B-5 Scenario 13 : User Pilih menu Monev Output pilih hasil, pilih button edit
    User Pilih Output Hasil Monev
    Click Button Edit
PMRMS-B-5 Scenario 14 : User Pilih menu Monev Intermediate Outcome pilih target, pilih button edit
    Click Monev Intermediate Output Target
    Click Button Edit
PMRMS-B-5 Scenario 15 : User Pilih menu Monev Intermediate Outcome pilih hasil, pilih button editt
    User Pilih Intermediate Outcome Hasil Monev
    Click Button Edit
PMRMS-B-5 Scenario 16 : User Pilih menu Monev Midterm Outcome pilih target, pilih button edit
    User Klik Monev Midterm Outcome Target
    Click Button Edit
PMRMS-B-5 Scenario 18 :User Pilih menu Monev Long Term Outcome pilih Target, pilih button edit
    User Klik Monev Longterm Outcome Target
    Click Button Edit
PMRMS-B-5 Scenario 19 :User Pilih menu Monev Long Term Outcome pilih Hasil, pilih button edit
    User Pilih Longterm Outcome Hasil Monev
    Click Button Edit
Close Browser
    Finish Testcase

*** Keywords ***
User Pilih Output Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-output/output
    Wait Until Page Contains Element    css= .title-header  timeout=30s
User Pilih Intermediate Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Wait Until Page Contains Element    css= .title-header  timeout=30s
User Pilih Midterm Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-midterm/Midterm
    Wait Until Page Contains Element    css= .title-header  timeout=30s
User Pilih Longterm Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-longterm/Longterm
    Wait Until Page Contains Element    css= .title-header  timeout=30s
Click lihat button
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=30s
    Click Element   //label[text()='Lihat']

