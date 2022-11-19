*** Settings ***
Documentation       Regression Test Sprint 10

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/pcu.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/kegiatan.robot
# Suite Teardown    Close All Browsers


*** Test Cases ***
#    PASSED
414 Scenario : Membuat Dokumen Concept Note
    Login valid as Konsultan
    event.Search Pencarian by Nama Kegiatan    Rapat S
    event.Click Button Cari
    event.Lihat Detail Event From Table List    1
    event.Download Concept Note from Detail Event
    Finish Testcase

#    PASSED

#     expecting search data with status 'Pelaksanaan'
555 Scenario : Membuat Dokumen Laporan Substantif
    Login valid as Konsultan
    event.Search Pencarian by Nama Kegiatan    Rapat S
    event.Click Button Cari
    event.Verify Download Button on Table Enabled    1
    event.Download Laporan from Table List    1
    Finish Testcase


#     yang ini dari file 19_    | scenario 34
653 Scenario : Membuat Laporan Kegiatan
    Login valid as Konsultan
    kegiatan.Search Pencarian by Nama Kegiatan    Laporan LSP Kegiatan Sudah Berlangsung 1
    kegiatan.Click Button Cari
    Lihat Detail Kegiatan
    kegiatan.Click Laporan Kegiatan
    kegiatan.Enter Buat Laporan Kegiatan
    Kegiatan.Tambah Lokasi Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Event
    kegiatan.Fill Ringkasan Pelaksanaan Kegiatan1
    Finish Testcase

#
##    PASSED
#
654 Scenario : Mengetahui Laporan Kegiatan
    Login valid as Koordinator
    kegiatan.Search Pencarian by Nama Kegiatan    Kegiatan Selasa Sprint 10 ke 2
    kegiatan.Click Button Cari
    Lihat Detail Kegiatan
    kegiatan.Click Laporan Kegiatan
    Finish Testcase


#    PASSED

658 Scenario : Pembuatan Laporan Kegiatan "Kontrak" (LSP)
    Login valid as PTM89
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing bfsuepefqb
    kegiatan.Click Button Cari
    Lihat Detail Kegiatan
    kegiatan.Click Laporan Kegiatan
    kegiatan.Enter Buat Laporan Kegiatan
    kegiatan.Tambah Lokasi Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Event
    kegiatan.Fill Ringkasan Pelaksanaan Kegiatan Kontrak
    Finish Testcase


659 Scenario : Memeriksa Laporan Kegiatan "Kontrak" (Konsultan)
#     ini dari 19_ | Scenario 36-38
    Login valid as Konsultan
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing bfsuepefqb
    kegiatan.Click Button Cari
    Lihat Detail Kegiatan
    Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Kirim Revisi Laporan Kegiatan
    Close Browser


660 Scenario : Positive - Merevisi Laporan Kegiatan "Kontrak" (LSP)
     # 44-45
    Login valid as PTM89
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing bfsuepefqb
    kegiatan.Click Button Cari
    Lihat Detail Kegiatan
    Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Enter Edit Laporan Kegiatan
    Click Lanjut Form Data Kegiatan
    Click Lanjut Form Data Event
    Edit Ringkasan Pelaksanaan Kegiatan Kontrak
    Finish Testcase

664 Scenario : Mengetahui Laporan Event
    Login valid as Koordinator
    event.Search Pencarian by Kode Kegiatan    Rapat S
    event.Click Button Cari
    event.Lihat Detail Event From Table List    1
    event.Click Tab Laporan Event
    event.Click Button Laporan Event
    Close All Browsers
    Login valid as PMU
    event.Search Pencarian by Kode Kegiatan    Rapat S
    event.Click Button Cari
    event.Lihat Detail Event From Table List    1
    event.Click Tab Laporan Event
    event.Click Button Laporan Event
    Finish Testcase


734 Scenario : Membuat Concept Note
    Login valid as Koordinator
    Buat Concept Note    Automation Testing ithkb
    pcu.Fill Data Umum Koordinator
    pcu.Fill Data Pelaksanaan    PCU    Sulawesi Utara    Yuji Laka
    pcu.Fill Data Event
    Finish Testcase


*** Keywords ***
Finish Testcase
    Sleep    2s
    close browser
    Sleep    2s

Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as PCU
    Given Login page is open
    And Input Valid Username PCU
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as Koordinator
    Given Login page is open
    And Input Valid Username Koordinator Komponen
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as PMU
    Given Login page is open
    And Input Valid Username role komponen 4
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as PTM89
    Given Login page is open
    And Input Valid Username PTM
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']
