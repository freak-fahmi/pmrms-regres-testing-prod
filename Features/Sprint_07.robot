*** Settings ***
Documentation       Regression Sprint 7
Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/pcu.robot
Resource            ../Keyword/kegiatan.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
#=======Kegiatan=======
Scenario PMRMS-2 Login Koordinator
    Given Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario PMRMS -388: User Mengklik Lihat Detail kegiatan
    Click Button Lihat Kegiatan
Scenario PMRMS -388 PMRMS-411 User Mengklik Button kembali dari page detail kegiatan
    kegiatan.Click Button Kembali
    kegiatan.Verify Page Kegiatan
Scenario PMRMS -410: Coordinator Melakukan Quality Entry Kontrak
    kegiatan.Search Pencarian by Nama Kegiatan   ostktkk
    kegiatan.Click Button Cari
    kegiatan.Click Button Lihat Kegiatan Perencanaan
    kegiatan.Coordinator Quality Entry

Scenario PMRMS -410: Coordinator Melakukan Approval Kontrak
    kegiatan.Click Button Setuju
    kegiatan.Input Catatan
    kegiatan.Click Button Kirim

Scenario PMRMS -410A: Coordinator Melakukan Quality Entry Swakelola
    kegiatan.Search Pencarian by Nama Kegiatan   ostswkll
    kegiatan.Click Button Cari
    kegiatan.Click Button Lihat Kegiatan Perencanaan
    kegiatan.Coordinator Quality Entry

Scenario PMRMS -410A: Coordinator Melakukan Approval Swakelola
    kegiatan.Click Button Setuju
    kegiatan.Input Catatan
    kegiatan.Click Button Kirim

Close Browser
    Finish Testcase

Scenario PMRMS-2 Login PMU
    Given Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario 15: PMU Melakukan Approval Kontrak
    kegiatan.Search Pencarian by Nama Kegiatan   ostktkk
    kegiatan.Click Button Cari
    kegiatan.Click Button Lihat Menunggu Persetujuan
    kegiatan.Click Button Setuju PMU
    kegiatan.Input Catatan Setuju
    kegiatan.Click Button Kirim pmu


Scenario 15: PMU Melakukan Approval Swakelola
    kegiatan.Search Pencarian by Nama Kegiatan   ostswkll
    kegiatan.Click Button Cari
    kegiatan.Click Button Lihat Menunggu Persetujuan
    kegiatan.Click Button Setuju PMU
    kegiatan.Input Catatan Setuju
    kegiatan.Click Button Kirim pmu
Close Browser
    Finish Testcase

#=======Event=======
####################
# Buat Concept Note
####################

Scenario 1: Login valid as Konsultan
    Login valid as Konsultan

Scenario 2 : Buat Concept Note
    Buat Concept Note    astswkll
    pcu.Fill Data Umum
    # rubah tanggal mulai dan akhir kegiatan di keyword ini
    Fill Data Pelaksanaan    PCU    Sulawesi Tengah    Asep Sunarso
    Fill Data Event

Scenario 3: Close Browser
    Finish Testcase


Scenario PMRMS-408 Login Coordinator untuk approval
    Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario PMRMS-410 User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    event.Search Pencarian by Nama Event    Eventkita
    Sleep    3s
    event.Click Button Cari

Scenario PMRMS-410 Coordinator Mengklik Lihat Detail Event
    Click Button Lihat Event
    Verify Page Detail Event

Scenario PMRMS-410 Coordinator Melakukan Approval Setuju
    event.Click Button Setuju
    Input Reason Setuju
    event.Click Button Kirim

Close Browser
    Finish Testcase

Scenario PMRMS-408 Login Bendahara/Treasure
    Login page is open
    Input Username Bendahara Treasure
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario PMRMS-466 User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    event.Search Pencarian by Nama Event    Eventkita
    Sleep    3s
    event.Click Button Cari

Scenario PMRMS-467 Bendahara/Treasure Mengklik Lihat Detail Event
    Bendahara Click Button Lihat Event
    Verify Page Detail Event

Scenario PMRMS-467 Bendahara/Treasure Melakukan Approval Setuju
    event.Click Button Setuju
    Click Radio Button Ada Anggaran
    Input Reason Setuju
    event.Click Button Kirim

Scenario PMRMS-408 Login PMU
    Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario PMRMS-466 User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    event.Search Pencarian by Nama Event    Eventkita
    Sleep    3s
    event.Click Button Cari

Scenario PMRMS-468 PMU Mengklik Lihat Detail Event
    PMU Click Button Lihat Event
    Verify Page Detail Event

Scenario PMRMS-468 PMU Melakukan Approval Setuju
    event.Click Button Setuju
    Input Reason Setuju
    event.Click Button Kirim

Close Browser
    Finish Testcase

*** Keywords ***
Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
