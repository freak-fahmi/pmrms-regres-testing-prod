*** Settings ***
Documentation       Regression Sprint 9

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/login.robot
#Resource    ../Keyword/pcu.robot
Resource            ../Keyword/kegiatan.robot
Resource            ../Keyword/konfigurasi.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
###################################
#    Menu Event
###################################
Scenario PMRMS-654 Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario PMRMS-472 User mengklik sidebar menu Event
    Click Menu Event
    Verify Page Event

Scenario PMRMS-655 User melakukan pencarian data by nama kegiatan
    event.Search Pencarian by Nama Kegiatan    Rapat S
    event.Click Button Cari
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=30s

Scenario 7: Close Browser
    Finish Testcase

###################################
#    Menu Konfigurasi
###################################

Scenario PMRMS-545 User mengklik menu konfigurasi
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
    Click Menu Konfigurasi
    Verify Page Konfigurasi

Scenario PMRMS-545 User mengklik button tambah pengguna
    Click Button Tambah Pengguna
    Verify Page Tambah Pengguna

Scenario PMRMS-545 User menambahkan pengguna dengan role LSP
    Input Data Tambah Pengguna
    Click Button Simpan Tambah Pengguna

Scenario 7: Close Browser
    Finish Testcase

#########################
# Menu Event
#########################


Scenario PMRMS-654 Login valid as Staff
    Login valid as Staff

Scenario PMRMS-472 Search Nama Event
    Search Kode Kegiatan    Training F1
    event.Click Button Cari
    Lihat Detail Kegiatan
    event.Click Tab Laporan Event

Scenario PMRMS-653 Buat Laporan Event
    Buat Laporan Substansi
    Buat Laporan Keuangan
    event.FIll Kata Pengantar

Scenario 4: Close Browser
    Finish Testcase

Scenario PMRMS-654 Login valid as Konsultan
    Login valid as Konsultan

Scenario PMRMS-558 Revisi Laporan Event Tanpa Merubah
    Search Kode Kegiatan    Training F1
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    kegiatan.Kirim Revisi

Scenario 7: Close Browser
    Finish Testcase

Scenario PMRMS-654 Login Valid as Staff
    Login valid as Staff

Scenario PMRMS-472 Search Nama Event
    Search Kode Kegiatan       Training F1
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    Enter Edit Laporan Event

Scenario PMRMS-558 Staff Merubah Revisi Laporan Kegiatan
    event.Fill Data Umum
    event.Click Lanjut Form Pelaksanaan
    event.Edit Form Data Event dan Peserta
    event.Click Lanjut Laporan Keuangan
    event.Click Lanjut Kata Pengantar

Scenario 11: Close Browser
    Finish Testcase

Scenario PMRMS-654 Login valid as Konsultan
    Login valid as Konsultan

Scenario PMRMS-472 Search Nama Event
    Search Kode Kegiatan    Training F1
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

Scenario PMRMS-654 Login valid as Konsultan
    Login valid as Konsultan

Scenario 17 : Download Laporan Event
    Search Kode Kegiatan        Training F1
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Event
    Click Download Laporan Event

Scenario 18: Close Browser
    Finish Testcase

####### Minta Data Tim Dev ################
#Laporan kemajuan event Staff

Scenario PMRMS-556 Login valid as Staff
    Login valid as Staff

Scenario PMRMS-472 Search Nama Event
    Search Kode Kegiatan    Event Training 27 Juli
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event

Scenario PMRMS-556 Buat Laporan Kemajuan Event
    Buat Laporan Substansi Kemajuan Event
    Buat Laporan Keuangan Kemajuan Event

Scenario 22: Close Browser
    Finish Testcase

Scenario PMRMS-654 Login valid as Konsultan
    Login valid as Konsultan

Scenario PMRMS-558 Revisi Laporan Kemajuan Event Tanpa Merubah
    Search Kode Kegiatan    Event Training 27 Juli
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Kirim Revisi Kemajuan Event

Scenario 25: Close Browser
    Finish Testcase

Scenario PMRMS-654 Login valid as Staff
    Login valid as Staff

Scenario PMRMS-558 Staff Melakukan Revisi Tanpa Merubah
    Search Kode Kegiatan    Event Training 27 Juli
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

Scenario PMRMS-654 Login valid as Staff
    Login valid as Staff

#Login valid as Konsultan

Scenario PMRMS-558 Staff Melakukan Revisi Perubahan
    Search Kode Kegiatan    Event Training 27 Juli
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

Scenario PMRMS-654 Login valid as Konsultan
    Login valid as Konsultan

Scenario 33 : Konsultan Melakukan Approval
    Search Kode Kegiatan        Event Training 27 Juli
    event.Click Button Cari
    Lihat Detail Kegiatan
    Click Tab Laporan Event
    Click Button Laporan Kemajuan Event
    Setuju Laporan Kemajuan Event
    kegiatan.Fill Catatan Setuju
    event.Click Button Kirim

###===========Laporan Event LSP===================#
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 10: User mengklik menu konfigurasi
    Scenario : User mengklik menu konfigurasi

Scenario 11: Search Pengguna LSP
    Scenario: Search Pengguna LSP

Scenario 12: Tambah Kegiatan
    Scenario: Tambah Kegiatan

Close Browser
    Finish Testcase


########### LOGIN LSP #################
Scenario 14: Login valid as PTM89
    Scenario : Login valid as PTM89


Scenario 15: Search Nama Kegiatan
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing vbgwa
    kegiatan.Click Button Cari

Scenario 16: Click Lihat Detail Kegiatan
    Scenario: Click Lihat Detail Kegiatan

Scenario 17: Click Laporan Kegiatan
    Scenario: Click Laporan Kegiatan

Scenario 18: Buat Laporan Event LSP
    Scenario: Buat Laporan Substansi
    Scenario: Buat Laporan Keuangan
    Scenario: Buat Kata Pengantar

Close Browser
    Finish Testcase

Scenario 19: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 20: Approval Kegiatan LSP
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing vbgwa
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
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing vbgwa
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
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing vbgwa
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Event
    Enter Edit Laporan Event

Scenario 28: LSP Edit Laporan Event
    kegiatan.Fill Data Umum
    kegiatan.Click Lanjut Form Pelaksanaan
    kegiatan.Click Lanjut Form Data Event dan Peserta
    kegiatan.Click Lanjut Laporan Keuangan
    kegiatan.Click Lanjut Kata Pengantar

Scenario 29: Close Browser
    Finish Testcase

Scenario 30: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 31 : Konsultan Melakukan Approval
    kegiatan.Search Pencarian by Nama Kegiatan    Automation Testing vbgwa
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Event
    Setuju Laporan Event
    Fill Catatan Setuju
    kegiatan.Click Button Kirim

Scenario 32: Close Browser
    Finish Testcase

###Buat Laporan Kegiatan LSP##########

Scenario 33: Login valid as PTM89
    Scenario : Login valid as PTM89

Scenario 34 : Buat Laporan Kegiatan LSP
    kegiatan.Search Pencarian by Nama Kegiatan    1.3.214.2145
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    Enter Buat Laporan Kegiatan
    Kegiatan.Tambah Lokasi Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Kegiatan
    kegiatan.Click Lanjut Form Data Event
    kegiatan.Fill Ringkasan Pelaksanaan Kegiatan Kontrak

Scenario 35: Close Browser
    Finish Testcase

Scenario 36: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 37: Search Laporan Kegiatan LSP
    kegiatan.Search Pencarian by Nama Kegiatan    1.3.214.2145
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
    kegiatan.Search Pencarian by Nama Kegiatan    1.3.214.2145
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
    kegiatan.Search Pencarian by Nama Kegiatan    1.3.214.2145
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Enter Edit Laporan Kegiatan

Scenario 45 : LSP Edit Laporan Kegiatan
    Click Lanjut Form Data Kegiatan
    Click Lanjut Form Data Event
    Edit Ringkasan Pelaksanaan Kegiatan Kontrak

Scenario 46: Close Browser
    Finish Testcase

Scenario 47: Login valid as Konsultan
    Scenario : Login valid as Konsultan

Scenario 48 : Konsultan Melakukan Approval
    kegiatan.Search Pencarian by Nama Kegiatan    1.3.214.2145
    kegiatan.Click Button Cari
    Scenario: Click Lihat Detail Kegiatan
    Scenario: Click Laporan Kegiatan
    View Detail Laporan Kegiatan
    Setuju Laporan Kegiatan
    Fill Catatan Setuju
    kegiatan.Click Button Kirim
    Scenario: Click Laporan Kegiatan


*** Keywords ***
Scenario : User melakukan pencarian dengan data tidak sesuai
    event.Search Pencarian No Data    testing123
    event.Click Button Cari
    event.Verify No Data

Scenario : User melakukan pencarian data by nama kegiatan
    event.Search Pencarian by Nama Kegiatan    Rapat S
    event.Click Button Cari
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=30s

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
    [Arguments]     ${inputkode}
    Search Pencarian by Kode Kegiatan    ${inputkode}

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
    Click Lanjut Form Data Umum Kemajuan Event1
    Click Lanjut Form Pelaksanaan Kemajuan Event
    event.Fill Form Data Event dan Peserta Kemajuan Event

Buat Laporan Keuangan Kemajuan Event
    Fill Laporan Keuangan Kemajuan Event

Scenario : User melakukan pencarian data by nama Event
    event.Search Pencarian by Nama Event    Automation
    Sleep    3s
    event.Click Button Cari

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
    kegiatan.Fill Data Umum
    kegiatan.Fill Form Pelaksanaan
    kegiatan.Fill Form Data Event dan Peserta

Scenario: Buat Laporan Keuangan
    kegiatan.Fill Laporan Keuangan

Scenario: Buat Kata Pengantar
    kegiatan.Fill Kata Pengantar

Scenario : Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

###################################
#    Menu Konfigurasi
###################################
Scenario : User mengklik Batal dari page tambah pengguna
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Click Button Tambah Pengguna
    Click Button Batal Tambah Pengguna
    Verify Page Konfigurasi
