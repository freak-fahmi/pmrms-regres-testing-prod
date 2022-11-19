*** Settings ***
Documentation  Regression Test Login Admin
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Scenario 1 Login komponen 1 staff tampil dashboard
    Login page is open
    input text    ${username}       atikqurrotuayun@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 2: Login komponen 1 konsultan tampil dashboard
    Login page is open
    input text    ${username}       acengabdulazis@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 3: Login komponen 1 koordinator tampil dashboard
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

Scenario 4: Login komponen 2 staff tampil dashboard
    Login page is open
    input text    ${username}       yusufhadiyudha@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}

Scenario 5: login komponen 2 konsultan tampil dashboard
    Login page is open
    input text    ${username}       yusufhadiyudha@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 6: login komponen 2 koordinator tampil dashboard
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 7: login komponen 3 staff tampil dashboard
    Login page is open
    input text    ${username}       raisarindraidah@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 8: login komponen 3 konsultan tampil dashboard
    Login page is open
    input text    ${username}       ninaharyanah@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 9: login komponen 3 koordinator tampil dashboard
    Login page is open
    input text    ${username}       anismasykur@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 10: login komponen 4 staff tampil dashboard
    Login page is open
    input text    ${username}       nadimiqbal@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 11: login komponen 4 konsultan tampil dashboard
    Login page is open
    input text    ${username}       abiratno@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 12: login komponen 4 koordinator tampil dashboard
    Login page is open
    input text    ${username}       dodiirawansyarip@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
Scenario 13: login PMU tampil dashboard
    Login page is open
    input text    ${username}       siska.merrydian@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
