*** Settings ***
Documentation       Sprint    8

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/pustaka.robot
Resource            ../Keyword/kegiatan.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/pcu.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
###################################
#    Menu Event
###################################
Scenario PMRMS-2 Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario PMRMS-472 User mengklik sidebar menu Event
    Click Menu Event
    Verify Page Event

Scenario PMRMS-539 User melakukan pencarian data by nama kegiatan
    event.Search Pencarian by Nama Kegiatan    Rapat S
    event.Click Button Cari

Scenario PMRMS-539 User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    event.Search Pencarian by Nama Event    Automation
    Sleep    3s
    event.Click Button Cari
    [Teardown]      Finish Testcase

###########################
# start buat laporan event PCU
###########################

Scenario 4: Login valid as PCU
    Given Login page is open
    And Input Valid Username PCU    ptm91@madrasah.kemenag.go.id
    And Input Valid Password1
    When Click button submit
    Then Verify Home Page is open

Scenario 5: PCU Membuat Laporan Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    Eventkita1
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    pcu.Click Buat Laporan Event

Scenario 6 : Buat Laporan Substansi Event
    Fill Data Umum Event
    Click Lanjut Data Pelaksanaan Event
    Fill Data Event dan Peserta

Scenario 7 : Buat Laporan Keuangan Event
    Fill Laporan Keuangan Event

Scenario 8 : Buat Kata Pengantar Event
    FIll Kata Pengantar Event

Scenario 9 : Close Browser
    Finish Testcase

# #########################
# # Submit Catatan Revisi
# #########################

Scenario 10 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 11 : Konsultan Revisi Laporan
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    Eventkita1
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event
    kegiatan.Kirim Revisi

Scenario 12 : Close Browser
    Finish Testcase

## ######################################
## # Edit Laporan Event dan Klik Lanjut
## ######################################

Scenario 13: Login valid as PCU
   Given Login page is open
   And Input Valid Username PCU    ptm91@madrasah.kemenag.go.id
   And Input Valid Password1
   When Click button submit
   Then Verify Home Page is open

Scenario 14 : Search Nama Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    Eventkita1
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event
    kegiatan.Enter Edit Laporan Event

Scenario 15 : PCU Merubah Revisi Laporan
    Fill Data Umum Event
    Click Lanjut Data Pelaksanaan Event
    Click Lanjut Data Event Dan Peserta
    Click Lanjut Laporan Keuangan Event
    Click Lanjut Kata Pengantar Event

Scenario 16 : Close Browser
    Finish Testcase

## ##########################
## # Approval Laporan Event
## ##########################

Scenario 17: Login valid as Konsultan
    Login valid as Konsultan

Scenario 18 : Search Nama Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    Eventkita1
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event

Scenario 19 : Konsultan Melakukan Approval Laporan Event
    kegiatan.Setuju Laporan Event
    kegiatan.Fill Catatan Setuju
    kegiatan.Click Button Kirim

Scenario 20 : Close Browser
    Finish Testcase

 ###################################
 # start buat laporan kemajuan event
 ###################################
#Login sebagai Staff
########## Dari Tim Dev #################

Login Valid as Staff
    Given Login page is open
    And Input Valid Username Staff
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario 22 : Staff Membuat Laporan Kemajuan Event
    # ganti item yang di cari di dalam keyword ini
    Search Event Staff    Event Training 27 Juli
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    pcu.Click Buat Laporan Kemajuan Event
    pcu.Input data Event Umum
    pcu.Click Lanjut Data Pelaksanaan Event
    pcu.Fill Data Event dan Peserta New
    pcu.Fill Laporan Keuangan Event New

Scenario 23 : Close Browser
    Finish Testcase
##################################
#    Menu Pustaka
###################################

Scenario PMRMS-2 Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario PMRMS-472 User mengklik menu pustaka
    Click Menu Pustaka
    Verify Page Dokumen Umum

Scenario PMRMS-538 User mengklik button upload file
    Click Button Upload File
    Verify Page Upload File

Scenario 4: User Mengklik button batal from page upload file
    Click Button Batal
    Verify Page Dokumen Umum

Scenario PMRMS-538 User Input Data MoM, Upload File dan Save
    Click Button Upload File
    Input Upload File MOM
    pustaka.Click Button Simpan

Scenario PMRMS-539 User Input Data POM, Upload File dan Save
    Click Button Upload File
    Input Upload File POM
    pustaka.Click Button Simpan

Scenario PMRMS-539 User Input Data AWP, Upload File dan Save
    Click Button Upload File
    Input Upload File AWP
    pustaka.Click Button Simpan

Close Browser
    Finish Testcase




*** Keywords ***
###################################
#    Menu Event
###################################
Scenario : User melakukan pencarian dengan data tidak sesuai
    event.Search Pencarian No Data    testing123
    event.Click Button Cari
    event.Verify No Data

Scenario : User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    event.Search Pencarian by Nama Event    Automation
    Sleep    3s
    event.Click Button Cari

Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as Koordinator Komponen
    Given Login page is open
    And Input Valid Username Koordinator Komponen
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login Valid as Staff
    Given Login page is open
    And Input Valid Username Staff
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
