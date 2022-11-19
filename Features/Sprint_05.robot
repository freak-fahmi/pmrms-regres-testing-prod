*** Settings ***
Documentation  Regression Sprint 5
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot
Resource    ../Keyword/profile.robot
Resource    ../Keyword/daftartugas.robot
Resource    ../Keyword/konfigurasi.robot


*** Variables ***


*** Test Cases ***
#======Login Role=============
Scenario PMRMS 2 Login komponen 1 staff tampil dashboard
    Login page is open
    input text    ${username}       atikqurrotuayun@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2 : Login komponen 1 konsultan tampil dashboard
    Login page is open
    input text    ${username}       acengabdulazis@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2 : Login komponen 1 koordinator tampil dashboard
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: Login komponen 2 staff tampil dashboard
    Login page is open
    input text    ${username}       yusufhadiyudha@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 2 konsultan tampil dashboard
    Login page is open
    input text    ${username}       yusufhadiyudha@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 2 koordinator tampil dashboard
    Login page is open
    input text    ${username}       abdulrouf@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 3 staff tampil dashboard
    Login page is open
    input text    ${username}       raisarindraidah@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 3 konsultan tampil dashboard
    Login page is open
    input text    ${username}       ninaharyanah@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 3 koordinator tampil dashboard
    Login page is open
    input text    ${username}       anismasykur@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 4 staff tampil dashboard
    Login page is open
    input text    ${username}       nadimiqbal@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 4 konsultan tampil dashboard
    Login page is open
    input text    ${username}       abiratno@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login komponen 4 koordinator tampil dashboard
    Login page is open
    input text    ${username}       dodiirawansyarip@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase
Scenario PMRMS 2: login PMU tampil dashboard
    Login page is open
    input text    ${username}       siska.merrydian@madrasah.kemenag.go.id
    input text    ${pwd}            ${adm_pwd}
    Click button submit
    Wait Until Element Is Visible    ${Verify_Profile}    timeout=30s
    Page Should Contain Element    ${Verify_Profile}
    [Teardown]    Finish Testcase

#=======Konfigurasi Pengguna=======
Scenario PMRMS-18: User mengklik menu konfigurasi
    Login page is open
    Input Valid Username
    Input Valid Password
    Click button submit
    Verify Home Page is open
    Click Menu Konfigurasi
    Verify Page Konfigurasi

Scenario PMRMS-18: User mengklik Batal dari page tambah pengguna
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Scenario : User mengklik button tambah pengguna
    Scenario : User mengklik Batal dari page tambah pengguna

Scenario PMRMS-18: User Search Pencarian by Nama Lengkap
    Scenario : User Search Pencarian by Nama Lengkap

Scenario PMRMS-18: User Search Pencarian by Email
    Scenario : User Search Pencarian by Email

Scenario PMRMS-19: User mengklik button tambah pengguna
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Scenario : User mengklik button tambah pengguna

Scenario PMRMS-19: User menambahkan pengguna dengan role PCU
    Scenario : User menambahkan pengguna dengan role PCU

Scenario PMRMS-19: User menambahkan pengguna dengan role Administrator
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Scenario : User mengklik button tambah pengguna
    Input Data Tambah Administrator
    Click Button Simpan Tambah Pengguna

Close Browser
    Finish Testcase


#=======Profile=======
Scenario PMRMS-22: User Login
    Login page is open
    Input Valid Username
    Input Valid Password
    Click button submit
    Verify Home Page is open
Scenario PMRMS-22: User mengklik menu profil
    Scenario : User mengklik menu profil
Scenario PMRMS-22: User mengklik button edit mengupdate beberapa field lalu klik simpan
    Scenario : User mengklik button edit mengupdate beberapa field lalu klik simpan
Scenario PMRMS-22: User mengklik button batal dari page ubah profile
    Scenario : User mengklik button batal dari page ubah profile
Scenario PMRMS-22: User mengklik button ubah password
    Scenario : User mengklik button ubah password
Scenario PMRMS-22: User mengklik button batal dari page ubah password
    Scenario : User mengklik button batal dari page ubah password
Close Browser
    Finish Testcase


#========Daftar Tugas===========
Scenario PMRMS- 320: Input Valid Username role komponen 4
    Scenario : Input Valid Username role komponen 4
Scenario PMRMS- 320: User mengklik menu Daftar Tugas
    Scenario : User mengklik menu Daftar Tugas
Scenario PMRMS- 320: User Melakukan pencarian di tab tugas saya
    Scenario : User Melakukan pencarian di tab tugas saya
Scenario PMRMS- 320: User Melakukan pencarian di tab penugasan saya
    Scenario : User Melakukan pencarian di tab penugasan saya
Scenario PMRMS- 320: User Mengklik Lihat Tugas Pada Tab Tugas Saya
    Scenario : User Mengklik Lihat Tugas Pada Tab Tugas Saya
Scenario PMRMS- 320: User Mengklik Button Kembali dari page detail tugas
    Scenario : User Mengklik Button Kembali dari page detail tugas
Scenario PMRMS- 320: User Membuat Tugas Pada Penugasan
    Scenario : User Mengklik Tab Penugasan lalu buat tugas
Scenario PMRMS- 320: User Menginput Tambah Tugas Lalu klik Simpan
    Pilih Nama Penerima Tugas
    Input Judul Tugas       pmrmsauto
    Input Tanggal Tugas     2022-11-30
    Input Deskripsi Tugas
    Pilih PDO
    Pilih IRI
    Sleep    3s
    daftartugas.Click Button Simpan
    Sleep    3s
    [Teardown]  Finish Testcase
Scenario PMRMS- 320: Login Eko Wahyu
    Login page is open
    Input Text    ${username}    ekowahyu@madrasah.kemenag.go.id
    Input Text    ${pwd}         ${adm_pwd}
    Click button submit
Scenario PMRMS- 320: User Menerima Tugas
    daftartugas.Click Menu Profile
    Click Button Daftar Tugas
    Verify Page Daftar Tugas
    Input Tugas Pada Tab Tugas Saya
    daftartugas.Click Button Cari
    Sleep    3s
    Click Buttton Lihat Tugas
    Click Terima
    Click Telah dikerjakan
Close Browser
    Finish Testcase



*** Keywords ***
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
    Search Pencarian No Data    testing123
    Click Button Cari
    Verify No Data

Scenario : User menambahkan pengguna dengan role PCU
#   Click Button Tambah Pengguna
#    Verify Page Tambah Pengguna
    konfigurasi.Input Data Tambah Pengguna PCU   812346798    Ketua    Doni Wibowo (Secretary PMU)
#    Klik Simpan
    Click Button Simpan Tambah Pengguna PCU

Scenario: Search Pengguna LSP
    Input Cari Pengguna
    konfigurasi.Click Button Cari
#    Lihat Detail Pengguna

Scenario : User mengklik menu profil
    profile.Click Menu Profile
    Click Button Profile
    Verify Page Profile
Scenario : User mengklik button edit mengupdate beberapa field lalu klik simpan
    Click Button Edit Profile
    profile.Click Button Simpan
    Verify Page Profile
Scenario : User mengklik button edit dan menambah role lalu simpan
    Click Button Edit Profile
    Click Label Tambah Role
    Cilck Label Staff
    Click Button Simpan
    Verify Role Staff
Scenario : User mengklik button edit dan mengklik button hapus (icon sampah) pada role
    Click Button Edit Profile
    Click Delete Role Staff
    Click Button Simpan
    Verify Delete Role Staff
Scenario : User mengklik button batal dari page ubah profile
    Click Button Edit Profile
    Click Button Batal
    Verify Page Profile
Scenario : User mengklik button ubah password
    Click Button Ubah Password
    Verify Page Ubah Password
Scenario : User Mengubah Password
    Input Password Lama
    Input Password Baru
    Input Konfirmasi Password
    Click Button Simpan
    Verify Alert Ubah Password
Scenario : User mengklik button batal dari page ubah password
    Click Button Batal
    Verify Page Profile


#========Daftar Tugas===========
Scenario : Input Valid Username role komponen 4
    Given Login page is open
    Input Valid Username role komponen 4
    And Input Valid Password Role
    When Click button submit
    Then Verify Home Page Penanggung Jawab is open
Scenario : User mengklik menu Daftar Tugas
    daftartugas.Click Menu Profile
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
#Scenario : User Menginput Tambah Tugas Lalu klik Simpan


