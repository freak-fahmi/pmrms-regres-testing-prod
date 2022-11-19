*** Settings ***
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/event.robot
Resource    ../Keyword/login.robot
Resource    ../Keyword/konfigurasi.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario 2: User mengklik sidebar menu Event
    Click Menu Event
    Verify Page Event

Scenario 3: Administrator Mengirim Tanggapan Peserta
    Admin Click Tab Tanggapan peserta
    Admin Search Tanggapan Peserta    1.2.321.123
    Event.Click Button Cari
    Admin Click Broadcast Formulir
    Admin Upload file excel
    Admin Click Button Broadcast Email

Scenario 4: Administrator Mengirim Tanggapan Evaluator
    Go To    https://pmrms.kemenag.go.id/activity/event
    Admin Click Tab Tanggapan Evaluator
    Admin Search Tanggapan Peserta    1.2.321.123
    Event.Click Button Cari
    Admin Click Broadcast Formulir
    Admin Upload file excel
    Admin Click Button Broadcast Email

Scenario 5: Administrator Pilih Hasil Broadcast Formulir Peserta
    Go To    https://pmrms.kemenag.go.id/activity/event
    Admin Click Tab Tanggapan peserta
    Admin Search Tanggapan Peserta    1.2.321.123
    Event.Click Button Cari
    Admin Click Hasil Broadcast Formulir
    Admin Verify Broadcast Formulir
    Admin Refresh Data
    Admin Click Close

Scenario 6: Administrator Pilih Hasil Broadcast Formulir Evaluator
    Go To    https://pmrms.kemenag.go.id/activity/event
    Admin Click Tab Tanggapan Evaluator
    Admin Search Tanggapan Peserta    1.2.321.123
    Event.Click Button Cari
    Admin Click Hasil Broadcast Formulir
    Admin Verify Broadcast Formulir
    Admin Refresh Data
    Admin Click Close

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

Close Browser
    Finish Testcase
