*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/awp.robot

*** Variables ***
${test}

*** Test Cases ***
###################################
#    Jenis Kegiatan Fullboard
###################################
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik sidebar menu awp
    Click Menu AWP
    Verify Page AWP
Scenario PMRMS-B-2 User Mengklik Button Tambah AWP
    Click Button Tambah AWP
    Verify Page Tambah AWP
Scenario PMRMS-B-2 User menginput jenis kegiatan fullboard pada form lalu melakukan save
    Random String
    awp.Input Data Umum Baru    bugfix${test}
    awp.Input Data Kegiatan
    awp.Input Data Pelaksanaan Jenis Kegiatan Fullboard
    awp.Input Data Peserta

Close Browser
    Finish Testcase
    
*** Keywords ***
Random String
    ${test}=    Generate Random String      4      1234567890
    Set Global Variable    ${test}
    Log To Console    random: ${test}
