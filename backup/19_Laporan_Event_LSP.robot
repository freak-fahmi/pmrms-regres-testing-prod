*** Settings ***
Documentation       Regression Test Laporan Event LSP

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/kegiatan.robot
Resource            15_Kegiatan.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 10: User mengklik menu konfigurasi
    Scenario : User mengklik menu konfigurasi

Scenario 11: Search Pengguna LSP
    Scenario: Search Pengguna LSP

Scenario 12: Tambah Kegiatan
    Scenario: Tambah Kegiatan

Scenario 13: Logout
    User Logout

Scenario 14: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 15: Search Nama Kegiatan
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari

Scenario 16: Click Lihat Detail Kegiatan
    Scenario: Click Lihat Detail Kegiatan

Scenario 17: Click Laporan Kegiatan
    Scenario: Click Laporan Kegiatan

Scenario 18: Buat Laporan Event
    Scenario: Buat Laporan Substansi
    Scenario: Buat Laporan Keuangan
    Scenario: Buat Kata Pengantar

Close Browser
    Finish Testcase

Scenario 19: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 20: Approval Kegiatan LSP
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan

Scenario 21: Kirim Revisi Laporan Event
    View Detail Laporan Event
    Kirim Revisi

Scenario 22: Close Browser
    Finish Testcase

Scenario 23: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 24: LSP Revisi Tanpa Merubah
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Event
    Enter Edit Laporan Event
    Edit Laporan Event

Scenario 25: Close Browser
    Finish Testcase

Scenario 26: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 27: LSP Merubah Revisi
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Event
    Enter Edit Laporan Event

Scenario 28: LSP Edit Laporan Event
    Fill Data Umum
    Click Lanjut Form Pelaksanaan
    Click Lanjut Form Data Event dan Peserta
    Click Lanjut Laporan Keuangan
    Click Lanjut Kata Pengantar

Scenario 29: Close Browser
    Finish Testcase

Scenario 30: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 31 : Konsultan Melakukan Approval
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Event
    Setuju Laporan Event
    Fill Catatan Setuju
    Click Button Kirim

Scenario 32: Close Browser
    Finish Testcase

Scenario 33: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 34 : Buat Laporan Kegiatan
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    Enter Buat Laporan Kegiatan
    Click Lanjut Form Data Kegiatan
    Click Lanjut Form Data Event
    Fill Ringkasan Pelaksanaan Kegiatan

Scenario 35: Close Browser
    Finish Testcase

Scenario 36: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 37: Search Laporan Kegiatan
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan

Scenario 38 : Revisi Laporan Kegiatan oleh Konsultan
    View Detail Laporan Kegiatan
    Kirim Revisi Laporan Kegiatan

Scenario 39: Close Browser
    Finish Testcase

Scenario 40: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 41: LSP Revisi Laporan Kegiatan Tanpa Merubah
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Enter Edit Laporan Kegiatan
    Edit Laporan Kegiatan

Scenario 42: Close Browser
    Finish Testcase

Scenario 43: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 44 : LSP Merubah Revisi Laporan Kegiatan
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Enter Edit Laporan Kegiatan

Scenario 45 : LSP Edit Laporan Kegiatan
    Click Lanjut Form Data Kegiatan
    Click Lanjut Form Data Event
    Edit Ringkasan Pelaksanaan Kegiatan

Scenario 46: Close Browser
    Finish Testcase

Scenario 47: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 48 : Konsultan Melakukan Approval
    Search Pencarian by Nama Kegiatan    autobadrus6
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Setuju Laporan Kegiatan
    Fill Catatan Setuju
    Click Button Kirim
    Scenario: Click Laporan Kegiatan


*** Keywords ***
Scenario : User mengklik menu konfigurasi
    Click Menu Konfigurasi
    Verify Page Konfigurasi

Scenario: Search Pengguna LSP
    Input Cari Pengguna
    kegiatan.Click Button Cari
    Lihat Detail Pengguna

Scenario: Tambah Kegiatan
    Click Edit Kegiatan
    Tambah Kegiatan
    Pilih Kegiatan and Submit

Scenario : Login valid as PTM89
    Given Login page is open
    And Input Valid Username PTM
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario: Click Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']

Scenario: Click Laporan Kegiatan
    Click Laporan Kegiatan

Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario: Buat Laporan Substansi
    Click Buat Laporan Event
    Fill Data Umum
    Fill Form Pelaksanaan
    Fill Form Data Event dan Peserta

Scenario: Buat Laporan Keuangan
    Fill Laporan Keuangan

Scenario: Buat Kata Pengantar
    Fill Kata Pengantar

Scenario : Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
