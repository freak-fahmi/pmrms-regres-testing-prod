*** Settings ***
Documentation       Regression Test Sprint 11

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/awp.robot
Resource            ../Keyword/monev.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/kegiatan.robot
Resource            ../Keyword/pcu.robot



*** Test Cases ***
740 Scenario : Mengisi Indikator Hasil dan Penilaian Jangka Pendek (Intermediate Outcome)
    Login as adm_usr
    Click Monev Intermediate Output Target
    Click View Target
    Click Close View
    Click Button Edit
    Pilih indikator intermediate
    Click Button Lanjut
    monev.Click Button Simpan
    Click Edit Monev output
    monev.Click Button Kembali
    Click Button Tambah Output indikator keberhasilan
    monev.Click Button Kembali
    User Klik Monev Output Target
    User Klik Tambah/Indikator keberhasilan
    User Input Output Kegiatan
    User Kik Button Lanjut
    User Input Pertanyaan
    User Klik Button Simpan
    User Klik Monev Output Target
    User Hapus Indikator
    User Klik Monev Intermediate Outcome Target
    User Klik Tambah/Indikator keberhasilan
    User Input Intermediate Kegiatan
    User Kik Button Lanjut
    User Input Pertanyaan
    User Klik Button Simpan
    Finish Testcase

741 Scenario : Mengisi Indikator Hasil dan Penilaian Jangka Menengah (Midterm Outcome)
    Login as adm_usr
    Click Monev Midterm Output Target
    Click View Target
    Click Close View
    Click Button Edit
    Pilih indikator midterm
    Click Button Lanjut
    monev.Click Button Simpan
    User Klik Monev Midterm Outcome Target
    User Klik Tambah/Indikator keberhasilan
    User Input Midterm Kegiatan
    User Kik Button Lanjut
    User Input Pertanyaan
    User Klik Button Simpan
    Finish Testcase
#
742 Scenario : Mengisi Indikator Hasil dan Penilaian Jangka Panjang (Longterm Outcome)
    Login as adm_usr
    Click Monev Longterm target
    Click View Target
    Click Close View
    Click Button Edit
    Pilih indikator longterm
    Click Button Lanjut
    monev.Click Button Simpan
    User Klik Monev Longterm Outcome Target
    User Klik Tambah/Indikator keberhasilan
    User Input Longterm Kegiatan
    User Kik Button Lanjut
    User Input Pertanyaan
    User Klik Button Simpan
    Finish Testcase

751 Scenario : Positive - Melihat Diagram Result Chain
    Login valid as Konsultan
    Sleep    3s
    Click Element    //div[@id='topnav-menu-content']/ul[1]/li[7]/a[1]
    Click Link    //a[@href='/monev/monev-result-chain']
    Finish Testcase

751 Scenario : Negative - Melihat Diagram Result Chain
    Login valid as Pcu
    Sleep    3s
    Click Element    //div[@id='topnav-menu-content']/ul[1]/li[7]/a[1]
    Click Link    //a[@href='/monev/monev-result-chain']
    Finish Testcase

#########data###############
#Data Kegiatan Harus Baru
#857 Scenario : Menambahkan Kontribusi Target Indikator Hasil Kegiatan
#    Login valid as Konsultan
#    kegiatan.Click Menu Kegiatan
#    kegiatan.Verify Page Kegiatan
#    Filter by Tahun
#    Search Pencarian by Nama Kegiatan    Automation Testing eevtn
#    kegiatan.Click Button Cari
#    kegiatan.Click Button Lihat Kegiatan Kontribusi
#    Click Button Implementasi Kegiatan
#    kegiatan.Input Data Umum
#    kegiatan.Input Data Kegiatan
#    kegiatan.Tambah Kontribusi Output Kegiatan
#    kegiatan.Input Data Pelaksanaan
#    kegiatan.Click Button Simpan
#    Finish Testcase
#
858 Scenario : Mengisi Indikator Hasil dan Penilaian Ouput
    # ini dari 21_ | scenario 1-15
    Login valid as Konsultan
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-output/output
    Wait Until Page Contains Element    css= .title-header    timeout=30s
    Wait Until Element Is Visible    ${inputCari}   timeout=30s
    Input Text    ${inputCari}    bimtek
    Click Element    ${btnCari}
    Wait Until Element Is Visible    css= .spacing    timeout=30s
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    3s
    Click Element    css= .spacing
    Wait Until Element Is Visible    //label[text()='Detail Hasil Output Kegiatan ']    timeout=30s
    Page Should Contain Element    //label[text()='Detail Hasil Output Kegiatan ']
    Wait Until Element Is Visible    ${btnKembali}      timeout=30s
    Click Element    ${btnKembali}
    Wait Until Element Is Visible    ${inputCari}       timeout=30s
    Input Text    ${inputCari}    bimtek
    Click Element    ${btnCari}
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}    timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Wait Until Page Contains Element    css= .title-header    timeout=30s
    Wait Until Element Is Visible    ${inputCari}       timeout=30s
    Input Text    ${inputCari}    madrasah
    Click Element    ${btnCari}
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Wait Until Element Is Visible    css= .spacing    timeout=30s
    Click Element    css= .spacing
    Page Should Contain Element    //label[text()='Detail Hasil Intermediate Outcome ']
    Click Element    ${btnKembali}
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
    Sleep    3s
    Click Element    //button[text()='Edit']
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Click Element    //button[text()=' Indikator Intermediate Outcome - I.1.A.1']
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Input Text    //div[@contenteditable='true']//p[1]      test
    Wait Until Element Is Visible    ${btnLanjut}    timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Input Text    //span[text()='Redo']/following::textarea    text
    Input Text    (//span[text()='Redo']/following::textarea)[2]    text
    Input Text    (//span[text()='Redo']/following::textarea)[3]    text
    Click Element    //input[@type='radio']
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    css= .spacing    timeout=30s
    Click Element    css= .spacing
    Click Element    ${btnKembali}
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}    timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Go To    https://pmrms.kemenag.go.id/monev/monev-result-longterm/Longterm
    Wait Until Page Contains Element    css= .title-header    timeout=30s
    Wait Until Element Is Visible    css= .spacing    timeout=30s
    Click Element    css= .spacing
    Page Should Contain Element    //label[text()='Detail Hasil Longterm Outcome ']
    Click Element    ${btnKembali}
    Sleep    3s
    Click Element    //button[text()='Edit']
    Wait Until Element Is Visible    ${btnLanjut}    timeout=30s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Finish Testcase
    Close All Browsers

*** Keywords ***
Login as adm_usr
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as Pcu
    Given Login page is open
    And Input Valid Username PCU    ptm91@madrasah.kemenag.go.id
    And Input Valid Password1
    When Click button submit
    Then Verify Home Page is open
