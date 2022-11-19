*** Settings ***
Documentation       Regression Test Menu Kegiatan

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/kegiatan.robot
Resource            ../Keyword/login.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
# Scenario 1: Login with username valid and password valid
#    Scenario 1: Login with username valid and password valid

# Scenario 2: User mengklik sidebar menu kegiatan
#    Scenario 2: User mengklik sidebar menu kegiatan

# Scenario 16: User melakukan Filter data by Tahun
#    Scenario 16: User melakukan Filter data by Tahun

# Scenario 3: User melakukan pencarian dengan data tidak sesuai
#    Scenario 3: User melakukan pencarian dengan data tidak sesuai

# Scenario 4: User melakukan pencarian data by nama kegiatan
#    Scenario 4: User melakukan pencarian data by nama kegiatan

# Scenario 6: Konsultan Melakukan Implementasi Kegiatan
#    Scenario 6: Konsultan Melakukan Implementasi Kegiatan

# Scenario 8: User Mengklik Lihat Detail kegiatan
#    Scenario 8: User Mengklik Lihat Detail kegiatan

# Scenario 9: User Mengklik Button kembali dari page detail kegiatan
#    Scenario 9: User Mengklik Button kembali dari page detail kegiatan

# Scenario 11: Login Coordinator
#    Scenario 11: Login Coordinator

# Scenario : User melakukan pencarian data by nama kegiatan status perencanaan
#    Scenario : User melakukan pencarian data by nama kegiatan status

# Scenario 12: Coordinator Melakukan Quality Entry
#    Scenario 12: Coordinator Melakukan Quality Entry

# Scenario 13: Coordinator Melakukan Approval
#    Scenario 13: Coordinator Melakukan Approval

# Scenario 14: Login PMU
#    Scenario 14: Login PMU

# Scenario : User melakukan pencarian data by nama kegiatan status menunggu persetujuan
#    Scenario : User melakukan pencarian data by nama kegiatan status

# Scenario 15: PMU Melakukan Approval
#    Scenario 15: PMU Melakukan Approval

# ini laporan kegiatan
# Scenario 16: Buat Laporan Kegiatan
#    Scenario: Buat Laporan Kegiatan

# Scenario 13: Logout
#    User Logout

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
    Scenario: Buat Laporan Event

# Close Browser
#    Finish Testcase


*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario 2: User mengklik sidebar menu kegiatan
    Click Menu Kegiatan
    Verify Page Kegiatan

Scenario 16: User melakukan Filter data by Tahun
    Filter by Tahun

Scenario 3: User melakukan pencarian dengan data tidak sesuai
    Search Pencarian No Data    testing123
    Kegiatan.Click Button Cari
#    Kegiatan.Verify No Data

Scenario 4: User melakukan pencarian data by nama kegiatan
    Search Pencarian by Nama Kegiatan    autobadrus6
    Click Button Cari
#    Verify Nama Kegiatan

Scenario : User melakukan pencarian data by nama kegiatan status
    Search Pencarian by Nama Kegiatan    autobadrus6
    Click Button Cari

Scenario 5: User Mengklik Sorting Status
    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
    Click Sorting Status

Scenario 6: Konsultan Melakukan Implementasi Kegiatan
    Click Button Lihat Kegiatan New
    Click Button Implementasi Kegiatan
    Input Data Umum
    Input Data Kegiatan
    Input Data Pelaksanaan
    Click Button Simpan

Scenario 8: User Mengklik Lihat Detail kegiatan
    Click Button Lihat Kegiatan
#    Verify Page Detail Kegiatan

Scenario 9: User Mengklik Button kembali dari page detail kegiatan
    Click Button Kembali
    Verify Page Kegiatan

Scenario 10: Consultan Logout
    User Logout

Scenario 11: Login Coordinator
    Given Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario 12: Coordinator Melakukan Quality Entry
#    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
#    Scenario 4: User melakukan pencarian data by nama kegiatan
#    Scenario 5: User Mengklik Sorting Status
    Click Button Lihat Kegiatan Perencanaan
    Coordinator Quality Entry

Scenario 13: Coordinator Melakukan Approval
    Click Button Setuju
    Input Catatan
    Click Button Kirim

Scenario 14: Login PMU
    Given Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario 15: PMU Melakukan Approval
#    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
#    Scenario 4: User melakukan pencarian data by nama kegiatan
#    Click Sorting Status Asc
    Click Button Lihat Menunggu Persetujuan
    Click Button Setuju
    Input Catatan Setuju
    Click Button Kirim

 Scenario : Login valid as PTM89
    Given Login page is open
    And Input Valid Username PTM
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario: Buat Laporan Event
    Click Buat Laporan Event
    Fill Data Umum

Scenario: Click Lihat Detail Kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']

Scenario: Click Laporan Kegiatan
    Click Laporan Kegiatan
