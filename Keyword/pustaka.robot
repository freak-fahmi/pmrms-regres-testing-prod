*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Xpath/pustaka.robot


*** Keywords ***
Click Menu Pustaka
    Wait Until Element Is Visible    ${menuPustaka}
    Click Element    ${menuPustaka}

Verify Page Dokumen Umum
    Wait Until Element Is Visible    ${verifyDokumenUmum}   timeout=30s
    Page Should Contain Element    ${verifyDokumenUmum}

Click Button Upload File
    Click Element    ${btnUploadFile}

Verify Page Upload File
    Wait Until Element Is Visible    ${verifyUploadFile}
    Page Should Contain Element    ${verifyUploadFile}

Click Button Batal
    Wait Until Element Is Visible    ${btnBatal}
    Execute JavaScript    document.evaluate("${btnBatal}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Input Upload File MOM
    ${text}=    Generate Random String    10    [LOWER]
    Sleep    3s
#    Wait Until Element Is Visible    ${tipeFile}    timeout=30s
    Select From List By Index    ${tipeFile}    2
    Click Element    ${lblUnitkerja}
    Click Element    ${komponen1}
    Input Text    ${namaFile}    Automation Testing ${text}
    Input Text    ${tglrapat}    2022-05-30
    Wait Until Element Is Visible    ${pilihTag}
    Click Element    ${pilihTag}
    Click Element    ${pilihMoM}
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Input Text    ${versi}    1
    Wait Until Element Is Enabled    ${uploadfile}
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Choose File    ${uploadfile}    D://Image/test.pdf



Input Upload File POM
    ${text}=    Generate Random String    10    [LOWER]
    Sleep    3s
#    Wait Until Element Is Visible    ${tipeFile}    timeout=30s
    Select From List By Index    ${tipeFile}    0
    Click Element    ${lblUnitkerja}
    Click Element    ${komponen1}
    Input Text    ${namaFile}    Automation Testing_${text}
#    Input Text    ${tglrapat}    2022-05-30
    Wait Until Element Is Visible    ${pilihTag}
    Click Element    ${pilihTag}
    Click Element    ${pilihMoM}
    Execute Javascript    window.scrollTo(0, window.scrollY+200)
    Input Text    ${versi}    1
    Wait Until Element Is Enabled    ${uploadfile}
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Choose File    ${uploadfile}    D://Image/test.pdf


Input Upload File AWP
    ${text}=    Generate Random String    10    [LOWER]
    Sleep    3s
#    Wait Until Element Is Visible    ${tipeFile}    timeout=30s
    Select From List By Index    ${tipeFile}    1
    Sleep    3s
    Click Element    ${lblUnitkerja}
    Click Element    ${komponen1}
    Input Text    ${namaFile}    Automation Testing_${text}
#    Input Text    ${tglrapat}    2022-05-30
    Wait Until Element Is Visible    ${pilihTag}
    Click Element    ${pilihTag}
    Click Element    ${pilihMoM}
    Input Text    ${versi}    1
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Wait Until Element Is Enabled    ${uploadfile}
    Choose File    ${uploadfile}    D://Image/test.pdf


Click Button Simpan
    Wait Until Element Is Visible    ${buttonSimpan}
    Execute JavaScript    document.evaluate("${buttonSimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    //label[text()='Dokumen Umum']    timeout=30s
