*** Settings ***
Documentation  Regression Test Sprint 04
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/administrasi.robot
Resource    ../Keyword/login.robot
Resource    ../Keyword/konfigurasi.robot

*** Variables ***


*** Test Cases ***
#========Konfigurasi=======
18 Scenario : User mengklik menu konfigurasi
   Given Login page is open
   And Input Valid Username
   And Input Valid Password
   When Click button submit
   Then Verify Home Page is open
   Click Menu Konfigurasi
   Verify Page Konfigurasi

18 Scenario : List User (Pengguna)
   konfigurasi.Search Pencarian by Nama Lengkap
   konfigurasi.Click Button Cari

18 Scenario : User Search Pencarian by Email
   konfigurasi.Search Pencarian by Email
   konfigurasi.Click Button Cari
   [Teardown]  Finish Testcase

#=========Direktori Staff===========#
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik Menu Administrasi lalu pilih menu Direktori Staff
    Click Menu Administrasi
    Sleep    3s
    Click Direktori Staff
    Verify Page Direktori Staff
Scenario 3: User mengklik menu lihat detail staff dari page direktori staff
    Click Lihat Detail Daftar Staff
    Verify Page Detail Staff
Scenario 4: User Mengklik Button Edit pada Page Detail Staff
    Click Button Edit Staff
    Verify Page Edit Staff
Scenario 5: User Mengklik Button Kembali dari page edit staff
    Click Button Kembali
    Verify Page Detail Staff
Scenario 6: User Mengklik Button Batal dari Page edit staff
    Click Button Edit Staff
    Click Button Batal
    Verify Page Detail Staff
Scenario 7: User Mengklik Button Edit Lalu Klik Simpan
    Click Button Edit Staff
    Click Button Simpan
    Verify Page Detail Staff
Scenario 8: User Mengklik Button Kembali dari Page Detail Staff
    Click Button Kembali
    Verify Page Direktori Staff
Scenario 9: User Input Data Pencarian Nama Staff Lalu klik Button Cari
    Input Pencarian Nama Staff
    administrasi.Click Button Cari
Scenario 10: User Input Data Pencarian Unit Kerja Lalu klik Button Cari
    Input Pencarian Unit Kerja
    administrasi.Click Button Cari
Scenario 11: User Input Data Pencarian Jabatan Lalu klik Button Cari
    Input Pencarian Jabatan
    administrasi.Click Button Cari
Scenario 12: User menginputkan character dan simbol di field search lalu klik cari
    Input Data No Data
    administrasi.Click Button Cari
    administrasi.Verify No Data
Scenario 13: User mengfilter daftar staf komponen 1
    Sleep    3s
    Click Button Filter Komponen 1
Scenario 14: User mengfilter daftar staf komponen 2
    Click Button Filter Komponen 2
Scenario 15: User mengfilter daftar staf komponen 3
    Click Button Filter Komponen 3
Scenario 16: User mengfilter daftar staf komponen 4.1
    Click Button Filter Komponen 4.1
Scenario 17: User mengfilter daftar staf komponen 4.2
    Click Button Filter Komponen 4.2
Scenario 18: User mengfilter daftar staf komponen 4.3
    Click Button Filter Komponen 4.3
Scenario 19: User mengfilter daftar staf komponen 4.4
    Click Button Filter Komponen 4.4
Close Browser
    Finish Testcase

*** Keywords ***
