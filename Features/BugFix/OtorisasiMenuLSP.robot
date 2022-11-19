*** Settings ***
Documentation       Regression Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/projectcomponent.robot
Resource            ../../Keyword/awp.robot
Resource    ../../Keyword/event.robot

*** Test Cases ***
###################################
#    Otorisasi Menu LSP
###################################
1.User login sebagai konsultan farmanizhar@madrasah.kemenag.go.id
    Login page is open
    input text    ${username}       farmanizhar@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

2.User pilih menu AWP, klik url , copy url
    Click Menu AWP
    Verify Page AWP
    Go To    https://pmrms.kemenag.go.id/admin/awp
    [Teardown]    Finish Testcase

3.User logout dan login sebagai LSP ptm89@madrasah.kemenag.go.id
   Login page is open
   input text    ${username}       ptm89@madrasah.kemenag.go.id
   input text    ${pwd}            ${adm_pwd}
   Click button submit
   Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
   Page Should Contain Element    ${Verify_Profile}

4.User melakukan paste url pada address, klik enter
    Go To    https://pmrms.kemenag.go.id/admin/awp
    Sleep    3s
    [Teardown]    Finish Testcase

5.User logout dan login sebagai konsultan farmanizhar@madrasah.kemenag.go.id
    Login page is open
    input text    ${username}       farmanizhar@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

6.User pilih menu Event, klik url , copy url
    Click Menu Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    [Teardown]    Finish Testcase

7.User logout dan login sebagai LSP ptm89@madrasah.kemenag.go.id
   Login page is open
   input text    ${username}       ptm89@madrasah.kemenag.go.id
   input text    ${pwd}            ${adm_pwd}
   Click button submit
   Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
   Page Should Contain Element    ${Verify_Profile}

8.User melakukan paste url pada address, klik enter
    Go To    https://pmrms.kemenag.go.id/activity/event
    Sleep    3s
    [Teardown]    Finish Testcase

9. User logout dan login sebagai konsultan farmanizhar@madrasah.kemenag.go.id
    Login page is open
    input text    ${username}       farmanizhar@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

10.User pilih menu Event, klik url , copy url
    Click Menu Event
    Go To    https://pmrms.kemenag.go.id/file/pustaka
    [Teardown]    Finish Testcase
11.User logout dan login sebagai LSP ptm89@madrasah.kemenag.go.id
   Login page is open
   input text    ${username}       ptm89@madrasah.kemenag.go.id
   input text    ${pwd}            ${adm_pwd}
   Click button submit
   Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
   Page Should Contain Element    ${Verify_Profile}

12.User melakukan paste url pada address, klik enter
    Go To    https://pmrms.kemenag.go.id/file/pustaka
    Sleep    3s
    [Teardown]    Finish Testcase
13. User logout dan login sebagai konsultan farmanizhar@madrasah.kemenag.go.id
    Login page is open
    input text    ${username}       farmanizhar@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

14.User pilih menu Event, klik url , copy url
    Click Menu Event
    Go To    https://pmrms.kemenag.go.id/monev/list-monev/output
    [Teardown]    Finish Testcase

15.User logout dan login sebagai LSP ptm89@madrasah.kemenag.go.id
   Login page is open
   input text    ${username}       ptm89@madrasah.kemenag.go.id
   input text    ${pwd}            ${adm_pwd}
   Click button submit
   Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
   Page Should Contain Element    ${Verify_Profile}

16.User melakukan paste url pada address, klik enter
    Go To     https://pmrms.kemenag.go.id/monev/list-monev/output
    Sleep    3s
    [Teardown]    Finish Testcase

17. User logout dan login sebagai konsultan farmanizhar@madrasah.kemenag.go.id
    Login page is open
    input text    ${username}       farmanizhar@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

18.User pilih menu Event, klik url , copy url
    Click Menu Event
    Go To    https://pmrms.kemenag.go.id/administrasi/detail
    [Teardown]    Finish Testcase

19.User logout dan login sebagai LSP ptm89@madrasah.kemenag.go.id
   Login page is open
   input text    ${username}       ptm89@madrasah.kemenag.go.id
   input text    ${pwd}            ${adm_pwd}
   Click button submit
   Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
   Page Should Contain Element    ${Verify_Profile}

20.User melakukan paste url pada address, klik enter
    Go To     https://pmrms.kemenag.go.id/administrasi/detail
    Sleep    3s
    [Teardown]    Finish Testcase







*** Keywords ***


