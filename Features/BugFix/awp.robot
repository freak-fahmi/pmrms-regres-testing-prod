*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/projectcomponent.robot
Resource            ../../Keyword/awp.robot

*** Test Cases ***
###################################
#    Download Awp
###################################
PMRMS-B-1 Scenario 1 : User Login AWP
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

PMRMS-B-1 Scenario 2: User mengklik sidebar menu awp
    Click Menu AWP
    Verify Page AWP

PMRMS-B-1 Scenario 3: User Mengklik Button Lihat Detail Awp
    Click Detail Awp
    Verify Detail Awp

PMRMS-B-1 Scenario 4: User pilih button download AWP
    Download File Awp

Close Browser
    Finish Testcase

*** Keywords ***
Download File Awp
    Wait Until Element Is Visible    //label[text()='Download File AWP']    timeout=30s
    Click Element    //label[text()='Download File AWP']
    Sleep    5s
