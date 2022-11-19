*** Settings ***
Documentation       Regression Test Menu AWP

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/awp.robot
Resource            ../Keyword/login.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 2: User mengklik sidebar menu awp
    Scenario : User mengklik sidebar menu awp

Scenario 3: User mengklik button index page untuk melihat data selanjutnya
    Scenario : User mengklik button index page untuk melihat data selanjutnya

Scenario 4: User mengklik field search input by Nama Kegiatan
    Scenario : User mengklik field search input by Nama Kegiatan

Scenario 5: User mengklik field search input by Pagu Anggaran Awp
    Scenario : User mengklik field search input by Pagu Anggaran Awp

Scenario 6: User Mengklik Detail Awp
    Scenario : User Mengklik Detail Awp

Scenario 7: User Mengklik Button Kembali dari detail awp
    Scenario : User Mengklik Button Kembali dari detail awp

Scenario 8: User mengklik field search input by Komponen Awp
    Scenario : User mengklik field search input by Komponen Awp

Scenario 9: User menginputkan karakter dan angka tidak sesuai
    Scenario : User menginputkan karakter dan angka tidak sesuai

Scenario 10: User Download Export AWP ke Doc
    Scenario : User Download Export AWP ke Doc

Scenario 11: User Edit Informasi Tambahan pada Konfirmasi Export AWP
    Scenario : User Edit Informasi Tambahan pada Konfirmasi Export AWP

Scenario 12: User Input Capaian PDO
    Scenario : User Input Capaian PDO

Scenario 13: User Input Kendala
    Scenario : User Input Kendala

Scenario 14: User Input Tambahan Informasi
    Scenario : User Input Tambahan Informasi

Scenario 15: User Menyimpan Informasi Tambahan
    Scenario : User Menyimpan Informasi Tambahan

Scenario 16: User Mengklik Button Tambah AWP
    Scenario : User Mengklik Button Tambah AWP

Scenario 17: User menginput data yang sudah ada didatabase pada form lalu melakukan save
    Scenario : User menginput data yang sudah ada didatabase lalu save

Scenario 18: User menginput data baru pada form lalu melakukan save
    Scenario : User menginput data baru pada form lalu melakukan save

Scenario 19: User Mengklik Button Kembali dari page tambah awp
    Scenario : User Mengklik Button Kembali dari page tambah awp

Scenario 20: User Mengklik Button Batal dari page tambah awp
    Scenario : User Mengklik Button Batal dari page tambah awp

Scenario 21: User Download Export AWP ke Doc
    Scenario : User Download Export AWP ke Doc

Scenario 22 : User Download Laporan Proyek
    Scenario: User Download Laporan Proyek

Scenario 23 : Export AWP ke Excel
    Scenario: Export AWP ke Excel

Close Browser
    Finish Testcase


*** Keywords ***
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario : User mengklik sidebar menu awp
    Click Menu AWP
    Verify Page AWP

Scenario : User mengklik button index page untuk melihat data selanjutnya
    Click Pagination AWP
#    Verify Pagination AWP

Scenario : User mengklik field search input by Nama Kegiatan
    Input Search by Nama kegiatan AWP    Automation
    Click Button Cari
#    Verify Search AWP

Scenario : User mengklik field search input by Pagu Anggaran Awp
    Input Search by Pagu Anggaran AWP    200
    Click Button Cari
#    Verify Pagu Anggaran Awp

Scenario : User Mengklik Detail Awp
    Click Detail Awp
    Verify Detail Awp

Scenario : User Mengklik Button Kembali dari detail awp
    Click Button Kembali Detail
    Verify Page AWP

Scenario : User mengklik field search input by Komponen Awp
    Input Search by Komponen AWP    Kelompok Kerja Guru
    Click Button Cari
#    Verify komponen Awp

Scenario : User menginputkan karakter dan angka tidak sesuai
    Input Search Karakter Angka Tidak sesuai    testing123
    Click Button Cari
    Verify No Data

Scenario : User Mengklik Button Tambah AWP
    Click Button Tambah AWP
    Verify Page Tambah AWP

Scenario : User menginput data yang sudah ada didatabase lalu save
    Input Data Umum
    Input Data Kegiatan
    Input Data Pelaksanaan
    Input Data Peserta

Scenario : User menginput data baru pada form lalu melakukan save
    Go To    https://pmrms.kemenag.go.id/admin/add-awp
    Sleep    5s
    awp.Input Data Umum Baru    fahmi03
    Input Data Kegiatan
    Input Data Pelaksanaan
    Input Data Peserta

Scenario : User Mengklik Button Kembali dari page tambah awp
    Go To    https://pmrms.kemenag.go.id/admin/awp
    Click Button Tambah AWP
    Verify Page Tambah AWP
    Click Button Kembali Add
    Verify Page AWP

Scenario : User Mengklik Button Batal dari page tambah awp
    Click Button Tambah AWP
    Click Button Batal
    Verify Page AWP

Scenario : User Download Export AWP ke Doc
    Click Button Export Awp ke Doc
    Pilih Export 2021
    Click Donwload Awp

Scenario : User Edit Informasi Tambahan pada Konfirmasi Export AWP
    Click Button Export Awp ke Doc
    Pilih Export 2021
    Click Edit Informasi Tambahan

Scenario : User Input Capaian PDO
    Input Capaian PDO

Scenario : User Input Kendala
    Input Kendala

Scenario : User Input Tambahan Informasi
    Input Informasi Tambahan

Scenario : User Menyimpan Informasi Tambahan
    Save Informasi Tambahan

Scenario: User Download Laporan Proyek
    Click Download Laporan Proyek
    Submit Form Download Laporan

Scenario: Export AWP ke Excel
    Click Export AWP ke Excel
    Submit Export AWP ke Excel
