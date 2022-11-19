*** Settings ***
Documentation       Regression Test Konfigurasi Pengguna

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/kegiatan.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 2: User mengklik menu konfigurasi
    Scenario : User mengklik menu konfigurasi

Scenario 3: User mengklik button tambah pengguna
    Scenario : User mengklik button tambah pengguna

Scenario 4: User menambahkan pengguna dengan role LSP
    Scenario : User menambahkan pengguna dengan role LSP

Scenario 5: User mengklik Batal dari page tambah pengguna
    Scenario : User mengklik Batal dari page tambah pengguna

Scenario 6: User Search Pencarian by Nama Lengkap
    Scenario : User Search Pencarian by Nama Lengkap

Scenario 7: User Search Pencarian by Email
    Scenario : User Search Pencarian by Email

Scenario 9: User menambahkan pengguna dengan role PCU
    Scenario : User menambahkan pengguna dengan role PCU

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

# Close Browser
#    Finish Testcase
#Scenario PMRMS-19: User menambahkan pengguna dengan role Administrator
#    Go To    https://pmrms.kemenag.go.id/configuration/list
#    Scenario : User mengklik button tambah pengguna
#    Input Data Tambah Administrator
#    Click Button Simpan Tambah Pengguna
#    [Teardown]  Finish Testcase

*** Keywords ***
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario : Login valid as PTM89
    Given Login page is open
    And Input Valid Username PTM
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario : User mengklik menu konfigurasi
    Click Menu Konfigurasi
    Verify Page Konfigurasi

Scenario : User mengklik button tambah pengguna
    Click Button Tambah Pengguna
    Verify Page Tambah Pengguna

Scenario : User menambahkan pengguna dengan role LSP
    Input Data Tambah Pengguna
    Click Button Simpan Tambah Pengguna

Scenario : User mengklik Batal dari page tambah pengguna
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Click Button Tambah Pengguna
    Click Button Batal Tambah Pengguna
    Verify Page Konfigurasi

Scenario : User Search Pencarian by Nama Lengkap
    Search Pencarian by Nama Lengkap
    konfigurasi.Click Button Cari
#    Verify Nama Lengkap

Scenario : User Search Pencarian by Email
    Search Pencarian by Email
    konfigurasi.Click Button Cari
#    Verify Email

Scenario : User Search Untuk data yang tidak ada
    konfigurasi.Search Pencarian No Data    testing123
    konfigurasi.Click Button Cari
    konfigurasi.Verify No Data

Scenario : User menambahkan pengguna dengan role PCU
    Click Button Tambah Pengguna
    Verify Page Tambah Pengguna
    Input Data Tambah Pengguna PCU    812346789    Ketua    Doni Wibowo (Secretary PMU)
    Klik Simpan
    Click Button Simpan Tambah Pengguna PCU

Scenario: Search Pengguna LSP
    Input Cari Pengguna
    konfigurasi.Click Button Cari
    Lihat Detail Pengguna

Scenario: Tambah Kegiatan
    Click Edit Kegiatan
    Tambah Kegiatan
    Pilih Kegiatan and Submit

Scenario: Click Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']

Scenario: Click Laporan Kegiatan
    Click Laporan Kegiatan
