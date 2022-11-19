*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/kegiatan.robot

*** Test Cases ***
###################################
#    Laporan Event LSP
###################################
PMRMS-B-2-Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

PMRMS-B-2-Scenario 1: User mengklik sidebar menu kegiatan
    Click Menu Kegiatan
    Verify Page Kegiatan

PMRMS-B-2-Scenario 2: User Search Kegiatan
    kegiatan.Search Pencarian by Nama Kegiatan      1.4.3.1
    kegiatan.Click Button Cari

PMRMS-B-2-Scenario 3: Click Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']

PMRMS-B-2-Scenario 4: Click Laporan Kegiatan
    Click Laporan Kegiatan

PMRMS-B-2-Scenario 5: User pilih label laporan event
    Wait Until Element Is Visible    //label[text()='Laporan Event 27 juli']     timeout=20s
    Click Element    //label[text()='Laporan Event 27 juli']
    Sleep    3s



PMRMS-B-2 Scenario 6: User pilih button download laporan event
    Download Laporan Event

Close Browser
    Finish Testcase
    
*** Keywords ***
Download File Awp
    Click Element    //label[text()='Download File AWP']
Download Laporan Event
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    click element   //label[text()='Download Laporan Event']
    Sleep    5s
