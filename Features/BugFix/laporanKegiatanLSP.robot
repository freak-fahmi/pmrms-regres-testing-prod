*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/kegiatan.robot

*** Test Cases ***
###################################
#    Download Laporan Kegiatan
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

PMRMS-B-2-Scenario 2: User Download Kegiatan
    Download Kegiatan

Close Browser
    Finish Testcase
    
*** Keywords ***
Download Kegiatan
    Click Element    (//button[contains(@class,'btn text-white')])[2]
    Sleep    5s
