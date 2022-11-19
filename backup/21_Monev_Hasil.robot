*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
#Resource    ../Keyword/event.robot
Resource    ../Keyword/login.robot
Resource    ../Xpath/kegiatan.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***

*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario 2: User Pilih Output Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-output/output
    Wait Until Page Contains Element    css= .title-header  timeout=30s

Scenario 3: User Search Output Hasil Monev
    Wait Until Element Is Visible    ${inputCari}
    Input Text       ${inputCari}    bimtek
    Click Element    ${btnCari}

Scenario 4: User View Output Hasil Monev
    Wait Until Element Is Visible    css= .spacing      timeout=30s
    Click Element    css= .spacing
    Wait Until Element Is Visible     //label[text()='Detail Hasil Output Kegiatan ']   timeout=30s
    Page Should Contain Element    //label[text()='Detail Hasil Output Kegiatan ']
    Click Element    ${btnKembali}

Scenario 5: User Edit Output Hasil Monev
    Wait Until Element Is Visible    ${inputCari}
    Input Text       ${inputCari}    bimtek
    Click Element    ${btnCari}
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}       timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Scenario 6: User Pilih Intermediate Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Wait Until Page Contains Element    css= .title-header  timeout=30s

Scenario 7: User Search Intermediate Outcome Hasil Monev
    Wait Until Element Is Visible    ${inputCari}
    Input Text       ${inputCari}    madrasah
    Click Element    ${btnCari}

Scenario 8: User View Intermediate Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Wait Until Element Is Visible    css= .spacing      timeout=30s
    Click Element    css= .spacing
    Page Should Contain Element    //label[text()='Detail Hasil Intermediate Outcome ']
    Click Element    ${btnKembali}

Scenario 9: User Edit Intermediate Outcome Hasil Monev
#    Wait Until Element Is Visible    ${inputCari}
#    Input Text       ${inputCari}    bimtek
#    Click Element    ${btnCari}
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}       timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Scenario 10: User Pilih Midterm Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-midterm/Midterm
    Wait Until Page Contains Element    css= .title-header  timeout=30s

Scenario 11: User View Midterm Outcome Hasil Monev
    Wait Until Element Is Visible    css= .spacing      timeout=30s
    Click Element    css= .spacing
    Page Should Contain Element    //label[text()='Detail Hasil Midterm Outcome ']
    Click Element    ${btnKembali}

Scenario 12: User Edit Midterm Outcome Hasil Monev
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}       timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Scenario 13: User Pilih Longterm Outcome Hasil Monev
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-longterm/Longterm
    Wait Until Page Contains Element    css= .title-header  timeout=30s

Scenario 14: User View Longterm Outcome Hasil Monev
    Wait Until Element Is Visible    css= .spacing      timeout=30s
    Click Element    css= .spacing
    Page Should Contain Element    //label[text()='Detail Hasil Longterm Outcome ']
    Click Element    ${btnKembali}

Scenario 15: User Edit Longterm Outcome Hasil Monev
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}       timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Scenario 16: User pilih Results Chain Diagram
    Sleep    3S
    Click Element    //div[@id='topnav-menu-content']/ul[1]/li[7]/a[1]
    Click Link       //a[@href='/monev/monev-result-chain']
    Page Should Contain Element    //label[text()='Result Chain Diagram']

Scenario 17: Close Browser
    Finish Testcase
    

