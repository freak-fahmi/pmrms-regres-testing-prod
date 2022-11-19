*** Settings ***
Documentation  Regression Test Sprint 6
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot
Resource    ../Keyword/konfigurasi.robot
Resource    ../Keyword/awp.robot
Resource    ../Keyword/daftartugas.robot
Resource    ../Keyword/administrasi.robot
Resource    ../Keyword/kegiatan.robot
#Resource    ../Keyword/event.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***
${test}

*** Test Cases ***
#=========Login Role=============
Scenario PMRMS-2 Login Project Management Unit Chair
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element      ${Verify_Profile}
    [Teardown]  Finish Testcase
Scenario PMRMS-2 Login Secretary
    Login page is open
    input text    ${username}       siska.merrydian@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]  Finish Testcase
Scenario PMRMS-2 Login Treasure
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]  Finish Testcase

#=======Konfigurasi Pengguna=======
Scenario PMRMS-18 Login with username valid and password valid
    Scenario : Login with username valid and password valid
Scenario PMRMS-18 User mengklik menu konfigurasi
    Scenario : User mengklik menu konfigurasi
Scenario PMRMS-18 User Search Pencarian by Nama Lengkap
    Scenario : User Search Pencarian by Nama Lengkap
Scenario PMRMS-18 User Search Pencarian by Email
    Scenario : User Search Pencarian by Email
Scenario PMRMS-18 User Search Untuk data yang tidak ada
    konfigurasi.Search Pencarian No Data    testing123
    konfigurasi.Click Button Cari
    konfigurasi.Verify No Data
Scenario PMRMS-313 User mengklik button tambah pengguna
    Scenario : User mengklik button tambah pengguna
    [Teardown]  Finish Testcase

#=======AWP=======
Scenario PMRMS-2 Login with username valid and password valid
    Scenario : Login with username valid and password valid
Scenario 2: User mengklik sidebar menu awp
    Click Menu AWP
    Verify Page AWP
Scenario PMRMS-188 User Mengklik Detail Awp
    Click Detail Awp
    Verify Detail Awp
Scenario PMRMS-188 User Mengklik Button Kembali dari detail awp
    Click Button Kembali Detail
    Verify Page AWP
Scenario PMRMS-188 User Mengklik Button Tambah AWP
    Click Button Tambah AWP
    Verify Page Tambah AWP

Scenario PMRMS-404 User menginput data baru kontrak pada form lalu melakukan save
    Random String
    awp.Input Data Umum Baru    ostktkk${test}
    awp.Input Data Kegiatan
    awp.Input Data Pelaksanaan
    awp.Input Data Peserta

Scenario PMRMS-404 User menginput data baru swakelola pada form lalu melakukan save
    Random String
    Click Button Tambah AWP
    Verify Page Tambah AWP
    awp.Input Data Umum Baru    ostswkll${test}
    awp.Input Data Kegiatan Swakelola
    awp.Input Data Pelaksanaan
    awp.Input Data Peserta

Scenario PMRMS-404 User Mengklik Button Batal dari page tambah awp
    Go To    https://pmrms.kemenag.go.id/admin/awp
    awp.Click Button Tambah AWP
    awp.Click Button Batal
    awp.Verify Page AWP
Scenario PMRMS-404 User mengklik field search input by Nama Kegiatan
    awp.Input Search by Nama kegiatan AWP  test
    awp.Click Button Search
Scenario PMRMS-404 User mengklik field search input by Pagu Anggaran Awp
    awp.Input Search by Pagu Anggaran AWP
    awp.Click Button Search
Scenario PMRMS-404 User mengklik field search input by Komponen Awp
    awp.Input Search by Komponen AWP  test
    awp.Click Button Search
Scenario PMRMS-415 User menginput Kode Kegiatan yang sudah ada
    Go To    https://pmrms.kemenag.go.id/admin/add-awp
    Sleep    5s
    awp.Input Data Umum Existing   Automation Testing fufio
    awp.Show Warning Kode Sudah Ada
    Sleep    2s
Close browser
    Finish Testcase

#=======Daftar tugas=======
Scenario PMRMS-2 Input Valid Username role komponen 4
    Scenario : Input Valid Username role komponen 4
Scenario PMRMS-238 User mengklik menu Daftar Tugas
    Scenario : User mengklik menu Daftar Tugas
Scenario 238 User Melakukan pencarian di tab tugas saya
    Scenario : User Melakukan pencarian di tab tugas saya
Scenario 238 User Melakukan pencarian di tab penugasan saya
    Scenario : User Melakukan pencarian di tab penugasan saya
Scenario PMRMS-238 User Membuat Tugas Pada Penugasan
    Scenario : User Mengklik Tab Penugasan lalu buat tugas
Scenario PMRMS-316 User Menginput Tambah Tugas Lalu klik Simpan
    Scenario : User Menginput Tambah Tugas Lalu klik Simpan
Close browser
    Finish Testcase

#=======Kegiatan=======
Scenario PMRMS-2 Login with username valid and password valid
    Scenario 1: Login with username valid and password valid

Scenario PMRMS-317 User mengklik sidebar menu kegiatan
    Scenario 2: User mengklik sidebar menu kegiatan

Scenario PMRMS-409 Konsultan Melakukan Implementasi Kegiatan Kontrak
    kegiatan.Search Pencarian by Nama Kegiatan      ostktkk
    kegiatan.Click Button Cari
    Click Button Lihat Kegiatan New
    Click Button Implementasi Kegiatan
    kegiatan.Input Data Umum
    kegiatan.Input Data Kegiatan
    kegiatan.Input Data Pelaksanaan
    kegiatan.Click Button Simpan
    Sleep    3s

Scenario PMRMS-409 Konsultan Melakukan Implementasi Kegiatan Swakelola
    kegiatan.Search Pencarian by Nama Kegiatan      ostswkll
    kegiatan.Click Button Cari
    Click Button Lihat Kegiatan New
    Click Button Implementasi Kegiatan
    kegiatan.Input Data Umum
    kegiatan.Input Data Kegiatan
    kegiatan.Input Data Pelaksanaan
    kegiatan.Click Button Simpan
    Sleep    5s
    [Teardown]  Finish Testcase


*** Keywords ***
#=======Konfigurasi=======
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario : User mengklik menu konfigurasi
    Click Menu Konfigurasi
    Verify Page Konfigurasi
Scenario : User Search Pencarian by Nama Lengkap
    Search Pencarian by Nama Lengkap
    konfigurasi.Click Button Cari
Scenario : User Search Pencarian by Email
    Search Pencarian by Email
    konfigurasi.Click Button Cari
Scenario : User mengklik button tambah pengguna
    Click Button Tambah Pengguna
    Verify Page Tambah Pengguna
Scenario : User menambahkan pengguna dengan role LSP
    Input Data Tambah Pengguna
    Click Button Simpan Tambah Pengguna
Scenario: Click Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']
Scenario: Tambah Kegiatan
    Click Edit Kegiatan
    Tambah Kegiatan
    Pilih Kegiatan and Submit

#=======Daftar tugas=======
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
    daftartugas.Click Button Cari
#    Verify Searching Tugas
Scenario : User Melakukan pencarian di tab penugasan saya
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Click Tab Penugasan
    Input Tugas Pada Tab Penugasan
    daftartugas.Click Button Cari
Scenario : User Mengklik Tab Penugasan lalu buat tugas
    Go To    https://pmrms.kemenag.go.id/task/list-task
    Click Tab Penugasan
    Click Button Buat Tugas
    Verify Element Page Buat Tugas
Scenario : User Menginput Tambah Tugas Lalu klik Simpan
    Pilih Nama Penerima Tugas
    Input Judul Tugas       pmrmsauto
    Input Tanggal Tugas     2022-10-30
    Input Deskripsi Tugas
    Pilih PDO
    daftartugas.Pilih IRI
    daftartugas.Click Button Simpan

#=======Kegiatan=======
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 2: User mengklik sidebar menu kegiatan
    Click Menu Kegiatan
    Verify Page Kegiatan
Random String
    ${test}=    Generate Random String      4      1234567890
    Set Global Variable    ${test}
    Log To Console    random: ${test}

