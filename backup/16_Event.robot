*** Settings ***
Documentation       Regression Test Menu Event

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/pcu.robot
Resource            ../Keyword/kegiatan.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 2: User mengklik sidebar menu Event
    Scenario : User mengklik sidebar menu Event

Scenario 3: User melakukan pencarian data by nama kegiatan
    Scenario : User melakukan pencarian data by nama kegiatan

Scenario 4: Konsultan Tambah Concept Note
    Scenario : Konsultan Tambah Concept Note

Scenario 5: Konsultan Input Data Umum
    Scenario : Konsultan Input Data Umum

Scenario 6: Konsultan input Data Pelaksanaan dan Simpan
    Scenario : Konsultan input Data Pelaksanaan dan Simpan
    Sleep    3s

Scenario 7: Login Coordinator untuk approval
    Scenario : Login Coordinator untuk approval

Scenario 8 : User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    Scenario : User melakukan pencarian data by nama Event

Scenario 9: Coordinator Mengklik Lihat Detail Event
    Scenario : Coordinator Mengklik Lihat Detail Event

Scenario 10: Coordinator Melakukan Approval Setuju
    Scenario : Coordinator Melakukan Approval Setuju

Scenario 11: Login Bendahara/Treasure
    Scenario : Login Bendahara/Treasure

Scenario 12 : User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    Scenario : User melakukan pencarian data by nama Event

Scenario 13: Bendahara/Treasure Mengklik Lihat Detail Event
    Scenario : Bendahara/Treasure Mengklik Lihat Detail Event

Scenario 14: Bendahara/Treasure Melakukan Approval Setuju
    Scenario : Bendahara/Treasure Melakukan Approval Setuju

Scenario 15: Login PMU
    Scenario : Login PMU

Scenario 16 : User melakukan pencarian data by nama Event
    Go To    https://pmrms.kemenag.go.id/activity/event
    Scenario : User melakukan pencarian data by nama Event

Scenario 17: PMU Mengklik Lihat Detail Event
    Scenario : PMU Mengklik Lihat Detail Event

Scenario 18: PMU Melakukan Approval Setuju
    Scenario : PMU Melakukan Approval Setuju

# ###################################
# # start buat laporan kemajuan event
# ###################################

Scenario 19: Login valid as Staff
    Login Valid as Staff

Scenario 20 : PCU Membuat Laporan Kemajuan Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    pcu.Click Buat Laporan Kemajuan Event

Scenario 21 : Buat Laporan Substansi Kemajuan Event
    pcu.Click Lanjut Form Data Umum Kemajuan Event
    pcu.Click Lanjut Form Pelaksanaan Kemajuan Event
    pcu.Fill Form Data Event dan Peserta Kemajuan Event

Scenario 22 : Buat Laporan Keuangan Kemajuan Event
    event.Fill Laporan Keuangan Kemajuan Event

Scenario 23 : Close Browser
    Finish Testcase

# ######################################
# # kirim revisi laporan kemajuan event
# ######################################

Scenario 24 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 25 : Revisi Laporan Kemajuan Event Tanpa Merubah
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Kemajuan Event
    event.Kirim Revisi Kemajuan Event

Scenario 26 : Close Browser
    Finish Testcase

# ######################################
# # start revisi laporan kemajuan event
# ######################################

Scenario 27: Login valid as Staff
    Login Valid as Staff

Scenario 28 : Revisi Laporan Kemajuan Event Tanpa Merubah
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Kemajuan Event
    event.Enter Edit Laporan Kemajuan Event
    pcu.Click Lanjut Form Data Umum Kemajuan Event
    pcu.Click Lanjut Form Pelaksanaan Kemajuan Event
    pcu.Click Lanjut Data Event Dan Peserta
    event.Click Simpan Laporan Keuangan Kemajuan Event

Scenario 29 : Close Browser
    Finish Testcase

######################################
# start revisi laporan kemajuan event
######################################

Scenario 30: Login valid as Staff
    Login Valid as Staff

Scenario 31 : Staff Melakukan Revisi Perubahan
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Kemajuan Event
    event.Enter Edit Laporan Kemajuan Event
    pcu.Click Lanjut Form Data Umum Kemajuan Event
    Click Lanjut Data Pelaksanaan Event
    pcu.Edit Form Data Event dan Peserta Kemajuan Event
    event.Click Simpan Laporan Keuangan Kemajuan Event

Scenario 32: Close Browser
    Finish Testcase

######################################
# approval laporan kemajuan event
######################################

Scenario 35 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 36: Konsultan Melakukan Approval
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Kemajuan Event
    event.Setuju Laporan Kemajuan Event
    kegiatan.Fill Catatan Setuju
    event.Click Button Kirim

Close Browser
    Finish Testcase


*** Keywords ***
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Scenario : User mengklik sidebar menu Event
    Click Menu Event
    Verify Page Event

Scenario : User melakukan pencarian dengan data tidak sesuai
    event.Search Pencarian No Data    testing123
    event.Click Button Cari
    event.Verify No Data

Scenario : User melakukan pencarian data by nama kegiatan
    event.Search Pencarian by Nama Kegiatan    Automation Testing
    event.Click Button Cari
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=30s
#    Verify Nama Kegiatan

Scenario : User melakukan pencarian data by nama Event
    Search Pencarian by Nama Event    Automation
    Sleep    3s
    event.Click Button Cari
#    Wait Until Element Is Visible    //td[.='Perencanaan']/..//button[.='Lihat']    timeout=30s

Scenario 24: Go to Detail Event
    Go To    https://pmrms.kemenag.go.id/activity/event

Scenario 25: Sort Status
    Wait Until Element Is Visible    //th[text()='Status']    timeout=30s
    Click Element    //th[text()='Status']

Scenario : Coordinator Mengklik Lihat Detail Event
#    Go To    https://pmrms.kemenag.go.id/activity/event
    Click Button Lihat Event
    Verify Page Detail Event

Scenario : User mengklik button Tab laporan event
    event.Click Tab Laporan Event

Scenario : User Mengklik Detail Laporan Event
    Click Button Laporan Event
    Verify Page Detail Laporan Event

Scenario : User Mengklik History Pada Detail Laporan Event
    Click Button History
    Verify Page History
    Click Button Close

Scenario : User Mengklik Button Kembali dari Page detail laporan Event
    event.Click Button Kembali

Scenario : User Mengklik Button kembali dari page detail event
    event.Click Button Kembali
    Verify Page Event

Scenario : User Mnegklik Button Keluar dari page detail event
    Click Button Lihat Event
    Verify Page Detail Event
    event.Click Button Keluar
    Verify Page Event

Scenario : User mengklik button kalender event
    Click Tab Calender Event
    Verify Page Calender Event

Scenario : Konsultan Tambah Concept Note
    Click Button Tambah Concept Note
    Click Button Pilih
    Pilih Concept Note
    Click Element Buat Concept Note

Scenario : Konsultan Input Data Umum
    Input Nama Event
    Click Button Lanjut
    Input Waktu Pelaksanaan kegiatan
    Pilih Tempat pelaksanaan
    Input Lokasi
    Tambah Peserta Pelaksana
    Click Button Lanjut

Scenario : Konsultan input Data Pelaksanaan dan simpan
    Input Latar Belakang Event
    Input Deskripsi Event
    Input Tujuan Event
    Input Output Event
    Input Jumlah Peserta
    Submit Agenda Event
    Pilih Narahubung
    Submit RAB Kegiatan
    event.Click Button Simpan
    Close Browser

Scenario : Login Coordinator untuk approval
    Given Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario : Coordinator Melakukan Approval Setuju
    event.Click Button Setuju
    Input Reason Setuju
    event.Click Button Kirim

Scenario : Login Bendahara/Treasure
    Given Login page is open
    Input Username Bendahara Treasure
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario : Bendahara/Treasure Mengklik Lihat Detail Event
#    Go To    https://pmrms.kemenag.go.id/activity/event
    Bendahara Click Button Lihat Event
    Verify Page Detail Event

Scenario : Bendahara/Treasure Melakukan Approval Setuju
    event.Click Button Setuju
    Click Radio Button Ada Anggaran
    Input Reason Setuju
    event.Click Button Kirim

Scenario : Login PMU
    Given Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open

Scenario : PMU Mengklik Lihat Detail Event
#    Go To    https://pmrms.kemenag.go.id/activity/event
    PMU Click Button Lihat Event
    Verify Page Detail Event

Scenario : PMU Melakukan Approval Setuju
    event.Click Button Setuju
    Input Reason Setuju
    event.Click Button Kirim

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
