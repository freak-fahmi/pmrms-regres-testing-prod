*** Settings ***
Documentation       Regression Test Sprint 13

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/dashboard.robot
Resource            ../Keyword/konfigurasi.robot

#Suite Teardown      Close All Browsers


*** Test Cases ***
#555 Scenario : Membuat Dokumen Laporan Substantif
#    Login valid as Konsultan
#    # expecting search data with status 'Pelaksanaan'
#    event.Search Pencarian by Nama Kegiatan    Rapat S
#    event.Click Button Cari
#    event.Verify Download Button on Table Enabled    1
#    event.Download Laporan from Table List    1
#    Finish Testcase

#754 Scenario : Membuat dashboard analisis resiko
#    Login as adm_usr
#    dashboard.Go to Dashboard Komponen
#    dashboard.Verify Button Komponen Present    Komponen 1
#    Close All Browsers
#    Login as Komponen 4
#    dashboard.Go to Dashboard Komponen
#    dashboard.Verify Button Komponen Present    Komponen 4
#    Finish Testcase
#
#755 Scenario : Membuat Dashboard Data
#    Login as adm_usr
#    dashboard.Go to Dashboard PMRMS
#    dashboard.Verify Button AWP Present
#    dashboard.Click Menu AWP
#    dashboard.Verify Dashboard AWP Present
#    Close All Browsers
#    Login as Komponen 4
#    dashboard.Go to Dashboard PMRMS
#    dashboard.Verify Button AWP Present
#    dashboard.Click Menu AWP
#    dashboard.Verify Dashboard AWP Present
#    Finish Testcase
#
#
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

#Scenario 2: User mengklik sidebar menu Event
#    Click Menu Event
#    Verify Page Event
#
#Scenario 3: Administrator Mengirim Tanggapan Peserta
#    Admin Click Tab Tanggapan peserta
#    Admin Search Tanggapan Peserta    1.2.321.123
#    Event.Click Button Cari
#    Admin Click Broadcast Formulir
#    Admin Upload file excel
#    Admin Click Button Broadcast Email
#
#Scenario 4: Administrator Mengirim Tanggapan Evaluator
#    Go To    https://pmrms.kemenag.go.id/activity/event
#    Admin Click Tab Tanggapan Evaluator
#    Admin Search Tanggapan Peserta    1.2.321.123
#    Event.Click Button Cari
#    Admin Click Broadcast Formulir
#    Admin Upload file excel
#    Admin Click Button Broadcast Email
#
#Scenario 5: Administrator Pilih Hasil Broadcast Formulir Peserta
#    Go To    https://pmrms.kemenag.go.id/activity/event
#    Admin Click Tab Tanggapan peserta
#    Admin Search Tanggapan Peserta    1.2.321.123
#    Event.Click Button Cari
#    Admin Click Hasil Broadcast Formulir
#    Admin Verify Broadcast Formulir
#    Admin Refresh Data
#    Admin Click Close
#
#Scenario 6: Administrator Pilih Hasil Broadcast Formulir Evaluator
#    Go To    https://pmrms.kemenag.go.id/activity/event
#    Admin Click Tab Tanggapan Evaluator
#    Admin Search Tanggapan Peserta    1.2.321.123
#    Event.Click Button Cari
#    Admin Click Hasil Broadcast Formulir
#    Admin Verify Broadcast Formulir
#    Admin Refresh Data
#    Admin Click Close
#
Scenario 7: Administrator Tambah Formulir
    Go To    https://pmrms.kemenag.go.id/configuration/list-event
    User Click Tambah Formulir
    User Pilih Type Kegiatan
    User Click Buat Formulir
    User Tambah Formulir
    User Click Button Simpan

Scenario 8: Hapus Formulir
    User Search Formulir
    User Hapus Formulir

Scenario 9: Administrator Lihat Hasil Formulir
    Go To    https://pmrms.kemenag.go.id/activity/event
    Admin Click Tab Tanggapan peserta
    User Click Hasil Formulir
    User Verify Hasil Formulir




*** Keywords ***
Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login as adm_usr
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login as Komponen 4
    Given Login page is open
    And Input Valid Username role komponen 4
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
