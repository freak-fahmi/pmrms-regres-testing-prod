*** Settings ***
Documentation       Regression Test Sprint 12

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/kegiatan.robot
Resource            ../Keyword/monev.robot
Resource            ../Keyword/administrasi.robot
Resource            ../Keyword/pcu.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/awp.robot
Resource            ../Keyword/dashboard.robot

#Suite Teardown      Close All Browsers


*** Test Cases ***
#731 Positive - Scenario : Membuat user dengan role PCU
#    # ini dari 08_ | Scenario 9
#    Login as adm_usr
#    Click Menu Konfigurasi
#    Verify Page Konfigurasi
#    Click Button Tambah Pengguna
#    Verify Page Tambah Pengguna
#    Input Data Tambah Pengguna PCU    812346798    Ketua    Doni Wibowo (Secretary PMU)
#    Click Button Simpan Tambah Pengguna PCU
#    Finish Testcase
#
#731 Negative - Scenario : Membuat user dengan role PCU
#    Login as pcu
#    Verify No Konfigurasi Menu
#    Finish Testcase
#
#739 Scenario : Mengisi Indikator Output Kegiatan pada Laporan Kegiatan
#    # ini dari 21_ | scenario 7-9
#    Login as Konsultan
#    # 8
#    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
#    Sleep    2s
#    Wait Until Element Is Visible    css= .spacing    timeout=30s
#    Click Element    css= .spacing
#    Page Should Contain Element    //label[text()='Detail Hasil Intermediate Outcome ']
#    Click Element    ${btnKembali}
#    # 9
#    Go To    https://pmrms.kemenag.go.id/monev/monev-result-intermediate/intermediate
#    Sleep    3s
#    Click Element    //button[text()='Edit']
#    Wait Until Element Is Visible    ${btnLanjut}    timeout=30s
#    Execute JavaScript    document.evaluate("${btnLanjut}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
#    Execute JavaScript    document.evaluate("${btnsimpan}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
#    Sleep    3s
#    Finish Testcase
#
#740 Scenario : Mengisi Indikator Hasil dan Penilaian Jangka Pendek (Intermediate Outcome)
#    # ini dari 17_ | scenario 12 - 23
#    Login as adm_usr
#    Click Monev Intermediate Output Target
#    Click View Target
#    Click Close View
#    Click Button Edit
#    Pilih indikator intermediate
#    monev.Click Button Lanjut
#    monev.Click Button Simpan
#    Click Edit Monev output
#    monev.Click Button Kembali
#    Click Button Tambah Output indikator keberhasilan
#    monev.Click Button Kembali
#    User Klik Monev Output Target
#    User Klik Tambah/Indikator keberhasilan
#    User Input Output Kegiatan
#    User Kik Button Lanjut
#    User Input Pertanyaan
#    User Klik Button Simpan
#    User Klik Monev Output Target
#    User Hapus Indikator
#    User Klik Monev Intermediate Outcome Target
#    User Klik Tambah/Indikator keberhasilan
#    User Input Intermediate Kegiatan
#    User Kik Button Lanjut
#    User Input Pertanyaan
#    User Klik Button Simpan
#    Sleep    4s
#    Finish Testcase
#
#752 Scenario : Membuat Laporan Kemajuan Event (PCU)
#    Login as pcu
#    Search Event PCU    Sprint review lagi ges 3
#    pcu.Click Button Cari
#    Lihat Detail Event
#    pcu.Click Tab Laporan Event
#    pcu.Click Buat Laporan Kemajuan Event
#    pcu.Click Lanjut Form Data Umum Kemajuan Event
#    pcu.Click Lanjut Form Pelaksanaan Kemajuan Event
#    pcu.Fill Form Data Event dan Peserta Kemajuan Event
#    event.Fill Laporan Keuangan Kemajuan Event
#    Sleep    4s
#    Finish Testcase
#
#
#
#######Data###############
#758 Scenario : Pergantian Sasaran Peserta
#    Login as pcu
#    Search Event PCU    Sprint Reviw lagi ges 2
#    pcu.Click Button Cari
#    pcu.Lihat Detail Event
#    pcu.Click Tab Laporan Event
#    pcu.Click Buat Laporan Event
#    pcu.Fill Data Umum Event
#    pcu.Click Lanjut Data Pelaksanaan Event
#    pcu.Fill Data Event dan Peserta
#    pcu.Fill Laporan Keuangan Event
#    pcu.FIll Kata Pengantar Event
#
#759 Scenario : Membuat dashboard analisis resiko
#    Login as adm_usr
#    dashboard.Go to Dashboard PMRMS
#    dashboard.Verify Button Risiko Present
#    Close All Browsers
#    Login as Komponen 4
#    dashboard.Go to Dashboard PMRMS
#    dashboard.Verify Button Risiko Present
#    Finish Testcase

#947 Scenario : Menambah Target Indikator Output Kegiatan
#    Login as adm_usr
#    Click Monev Longterm target
#    Click View Target
#    Click Close View
#    Click Button Edit
#    Pilih indikator longterm
#    monev.Click Button Lanjut
#    monev.Click Button Simpan
#    Click Monev Midterm Output Target
#    Click View Target
#    Click Close View
#    Click Button Edit
#    Pilih indikator midterm
#    monev.Click Button Lanjut
#    monev.Click Button Simpan
#    Click Monev Intermediate Output Target
#    Click View Target
#    Click Close View
#    Click Button Edit
#    Pilih indikator intermediate
#    monev.Click Button Lanjut
#    monev.Click Button Simpan

#951 Scenario : Mengubah Target Indikator Output Kegiatan
#    Click Edit Monev output
#    monev.Click Button Kembali
#    Click Button Tambah Output indikator keberhasilan
#    monev.Click Button Kembali
#
#955 Scenario : Hapus Target Indikator Output Kegiatan
#    User Klik Monev Output Target
#    User Klik Tambah/Indikator keberhasilan
#    User Input Output Kegiatan
#    User Kik Button Lanjut
#    User Input Pertanyaan
#    User Klik Button Simpan
#    Finish Testcase
#
#962 Scenario : Mengubah informasi tambahan AWP
#    Login as adm_usr
#    awp.Click Menu AWP
#    Verify Page AWP
#    Click Button Export Awp ke Doc
#    Pilih Export 2021
#    Click Donwload Awp
#    Sleep    2s
#    Click Download Laporan Proyek
#    Submit Form Download Laporan
#    Sleep    2s
#    Click Export AWP ke Excel
#    Submit Export AWP ke Excel

##    PASSED
#
1047 Scenario : Mengikutsertakan staff PCU dalam Event (Konsultan)
    Login as Konsultan
    Buat Concept Note    1.1.1.estswkll1014 - Automation Testing nnmmw
    pcu.Fill Data Umum
    pcu.Fill Data Pelaksanaan    PCU    Sulawesi Utara    Yuji Laka
    pcu.Fill Data Event
    Finish Testcase

#1048 Scenario : Perbaikan Daftar Direktori Staff
#    Login as adm_usr
#    Click Menu Administrasi
#    Click Direktori Staff
#    Verify Page Direktori Staff
#    Click Lihat Detail Daftar Staff
#    Verify Page Detail Staff


*** Keywords ***
Login as adm_usr
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login as pcu
    Given Login page is open
    # And Input Valid Username PCU
    And Input Username with Param    ptm97@madrasah.kemenag.go.id
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login as Komponen 4
    Given Login page is open
    And Input Valid Username role komponen 4
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
