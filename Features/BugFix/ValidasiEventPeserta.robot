*** Settings ***
Documentation       Bugfix
Library             SeleniumLibrary
Resource            ../../Keyword/browser.robot
Resource            ../../Keyword/event.robot
Resource            ../../Keyword/login.robot
Resource            ../../Keyword/pcu.robot

*** Test Cases ***
PMRMS-B-2 Scenario 1: Login valid as Konsultan Farmanizhar
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

PMRMS-B-2 Scenario 2 : Tambah Concept Note
    Buat Concept Note     1.1.1.estswkll1014 - Automation Testing nnmmw
    pcu.Fill Data Umum
    # rubah tanggal mulai dan akhir kegiatan di keyword ini
    Fill Data Pelaksanaan Peserta Farmanizhar
    Fill Data Event

*** Keywords ***
Fill Data Pelaksanaan Peserta Farmanizhar
    Sleep    2s
    Input Text    ${inputLokasi}    Automation Input Lokasi
    Execute JavaScript    document.evaluate("${buttonTempatPelaksanaan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${btnPilihProvinsi}    timeout=10s
    Click Element    ${btnPilihProvinsi}
    Wait Until Element Is Visible    ${labelProvinsiFirst}    timeout=10s
    Click Element    ${labelProvinsiFirst}
    Wait Until Element Is Visible    ${btnSimpanProvinsi}    timeout=10s
    Click Element    ${btnSimpanProvinsi}
    Sleep    3s
    Wait Until Element Is Visible    (//button[text()='Lanjut'])[2]    timeout=10s
    Click Element    (//button[text()='Lanjut'])[2]
    Sleep    5s