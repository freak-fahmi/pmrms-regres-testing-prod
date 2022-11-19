*** Settings ***
Documentation       Regression Test Laporan Event dan Laporan Kemajuan Event

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/kegiatan.robot
Resource            19_Laporan_Event_LSP.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login valid as Staff
    Login valid as Staff

Scenario 2 : Search Nama Event
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event

Scenario 3: Buat Laporan Event
    Buat Laporan Substansi
    Buat Laporan Keuangan
    event.FIll Kata Pengantar

Scenario 4: Close Browser
    Finish Testcase

Scenario 5: Login valid as Konsultan
    Login valid as Konsultan

Scenario 6 : Revisi Laporan Event Tanpa Merubah
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    kegiatan.Kirim Revisi

Scenario 7: Close Browser
    Finish Testcase

Scenario 8 : Login Valid as Staff
    Login valid as Staff

Scenario 9 : Search Nama Event
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    Enter Edit Laporan Event

Scenario 10 : Staff Merubah Revisi Laporan Kegiatan
    event.Fill Data Umum
    event.Click Lanjut Form Pelaksanaan
    event.Edit Form Data Event dan Peserta
    event.Click Lanjut Laporan Keuangan
    event.Click Lanjut Kata Pengantar

Scenario 11: Close Browser
    Finish Testcase

Scenario 12: Login valid as Konsultan
    Login valid as Konsultan

Scenario 13 : Search Nama Event
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event

Scenario 14 : Konsultan Melakukan Approval
    kegiatan.Setuju Laporan Event
    kegiatan.Fill Catatan Setuju
    kegiatan.Click Button Kirim

Scenario 15: Close Browser
    Finish Testcase

Scenario 16 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 17 : Download Laporan Event
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    Click Download Laporan Event

Scenario 18: Close Browser
    Finish Testcase

Scenario 19: Login valid as Staff
    Login valid as Staff

Scenario 20 : Search Nama Event
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event

Scenario 21 : Buat Laporan Kemajuan Event
    Buat Laporan Substansi Kemajuan Event
    Buat Laporan Keuangan Kemajuan Event

Scenario 22: Close Browser
    Finish Testcase

Scenario 23 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 24 : Revisi Laporan Kemajuan Event Tanpa Merubah
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Kirim Revisi Kemajuan Event

Scenario 25: Close Browser
    Finish Testcase

Scenario 26 : Login valid as Staff
    Login valid as Staff

Scenario 27 : Staff Melakukan Revisi Tanpa Merubah
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Enter Edit Laporan Kemajuan Event
    Click Lanjut Form Data Umum Kemajuan Event
    Click Lanjut Form Pelaksanaan Kemajuan Event
    kegiatan.Click Lanjut Form Data Event dan Peserta
    Click Simpan Laporan Keuangan Kemajuan Event

Scenario 28: Close Browser
    Finish Testcase

Scenario 29 : Login valid as Staff
    Login valid as Staff

Login valid as Konsultan

Scenario 30 : Staff Melakukan Revisi Perubahan
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Enter Edit Laporan Kemajuan Event
    Click Lanjut Form Data Umum Kemajuan Event
    Edit Form Pelaksanaan Kemajuan Event
    kegiatan.Click Lanjut Form Data Event dan Peserta
    Click Simpan Laporan Keuangan Kemajuan Event

Scenario 31: Close Browser
    Finish Testcase

Scenario 32 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 33 : Konsultan Melakukan Approval
    Search Kode Kegiatan
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Setuju Laporan Kemajuan Event
    kegiatan.Fill Catatan Setuju
    event.Click Button Kirim


*** Keywords ***
Login valid as Staff
    Given Login page is open
    And Input Valid Username Staff
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Search Kode Kegiatan
    Search Pencarian by Kode Kegiatan    1.2.321.123

Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']

Buat Laporan Substansi
    Click Buat Laporan Event
    event.Fill Data Umum
    event.Click Lanjut Form Pelaksanaan
    event.Fill Form Data Event dan Peserta

Buat Laporan Keuangan
    event.Fill Laporan Keuangan

Buat Laporan Substansi Kemajuan Event
    Click Buat Laporan Kemajuan Event
    Click Lanjut Form Data Umum Kemajuan Event
    Click Lanjut Form Pelaksanaan Kemajuan Event
    event.Fill Form Data Event dan Peserta Kemajuan Event

Buat Laporan Keuangan Kemajuan Event
    Fill Laporan Keuangan Kemajuan Event
