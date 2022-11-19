*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/dashboard.robot


*** Keywords ***
Go to Dashboard PMRMS
    Wait Until Element Is Visible    ${tabDashboardPMRMS}    timeout=10s
    Click Element    ${tabDashboardPMRMS}
    Sleep    2s

Go to Dashboard Komponen
    Wait Until Element Is Visible    ${tabDashboardPMRMS}    timeout=10s
    Sleep    2s

Verify Button Risiko Present
    Page Should Contain Element    ${btnRisiko}

Verify Button Risiko NOT Present
    Page Should Not Contain Element    ${btnRisiko}

Verify Button AWP Present
    Page Should Contain Element    ${btnAWP}

Click Menu AWP
    Click Element    ${btnAWP}

Verify Button AWP NOT Present
    Page Should Not Contain Element    ${btnAWP}

Verify Dashboard AWP Present
    Wait Until Element Is Visible    ${divDashboardAWP}    timeout=120s

Verify Dashboard AWP NOT Present
    Page Should Not Contain Element    ${divDashboardAWP}

Verify Button Komponen Present
    [Arguments]    ${buttonText}
    Page Should Contain Element    //button[contains(text(), '${buttonText}')]
