*** Settings ***
Documentation  Regression Test Daftar Tugas
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/daftartugas.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Scenario 1: Input Valid Username role komponen 4
    Scenario : Input Valid Username role komponen 4
Scenario 2: User mengklik menu Daftar Tugas
    Scenario : User mengklik menu Daftar Tugas
Scenario 3: User Melakukan pencarian di tab tugas saya
    Scenario : User Melakukan pencarian di tab tugas saya
Scenario 4: User Melakukan pencarian di tab penugasan saya
    Scenario : User Melakukan pencarian di tab penugasan saya
Scenario 5: User Mengklik Lihat Tugas Pada Tab Tugas Saya
    Scenario : User Mengklik Lihat Tugas Pada Tab Tugas Saya
Scenario 6: User Mengklik Button Kembali dari page detail tugas
    Scenario : User Mengklik Button Kembali dari page detail tugas
Scenario 7: User Membuat Tugas Pada Penugasan
    Scenario : User Mengklik Tab Penugasan lalu buat tugas
Scenario 8: User Menginput Tambah Tugas Lalu klik Simpan
    Scenario : User Menginput Tambah Tugas Lalu klik Simpan
Scenario 10: Login Eko Wahyu
    Login page is open
    Input Text    ${username}    ekowahyu@madrasah.kemenag.go.id
    Input Text    ${pwd}         ${adm_pwd}
    Click button submit
Scenario 11: User Menerima Tugas
    Click Menu Profile
    Click Button Daftar Tugas
    Verify Page Daftar Tugas
    Input Tugas Pada Tab Tugas Saya
    Click Button Cari
    Sleep    3s
    Click Buttton Lihat Tugas
    Click Terima
    Click Telah dikerjakan

Close Browser
    Finish Testcase


*** Keywords ***
Scenario : Input Valid Username role komponen 4
    Given Login page is open
    Input Valid Username role komponen 4
    And Input Valid Password Role
    When Click button submit
    Then Verify Home Page Penanggung Jawab is open
Scenario : User mengklik menu Daftar Tugas
    Click Menu Profile
    Click Button Daftar Tugas
    Verify Page Daftar Tugas
Scenario : User Melakukan pencarian di tab tugas saya
    Input Tugas Pada Tab Tugas Saya
    Click Button Cari
#    Verify Searching Tugas
Scenario : User Melakukan pencarian di tab penugasan saya
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Click Tab Penugasan
    Input Tugas Pada Tab Penugasan
    Click Button Cari
#    Verify Searching Penugasan
Scenario : User Mengklik Lihat Tugas Pada Tab Tugas Saya
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Click Buttton Lihat Tugas
#    Verify Detail Tugas
Scenario : User Mengklik Button Kembali dari page detail tugas
    Click Button Kembali
    Verify Page Daftar Tugas
Scenario 7: User Mengklik Button Simpan dari Detail Tugas
    Click Buttton Lihat
    Verify Detail Tugas
    Click Button Simpan
    Verify Page Daftar Tugas
Scenario 8: User Mengklik Button Keluar dari detail tugas
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Input Tugas Pada Tab Tugas Saya
    Click Button Cari
    Click Buttton Lihat
    Verify Detail Tugas
    Click Button Keluar
    Verify Page Daftar Tugas
Scenario 9: User Mengklik Kalender Event
    Click Kalender Event
Scenario 10: User Mengklik tab tanggapan peserta
    Click Tab Tanggapan peserta
Scenario 11. User Mengklik Button Edit Lalu Simpan
    Click Tab Penugasan
    Click Buttton Lihat Tugas
    Verify Detail Tugas
    Click Button Edit
    Click Button Simpan
    Verify Detail Tugas
Scenario : User Mengklik Tab Penugasan lalu buat tugas
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Click Tab Penugasan
    Click Button Buat Tugas
    Verify Element Page Buat Tugas
Scenario : User Menginput Tambah Tugas Lalu klik Simpan
    Pilih Nama Penerima Tugas
    Input Judul Tugas
    Input Tanggal Tugas
    Input Deskripsi Tugas
    Pilih PDO
    Pilih IRI
    Click Button Simpan





