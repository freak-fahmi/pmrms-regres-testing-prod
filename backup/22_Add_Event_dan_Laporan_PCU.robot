*** Settings ***
Documentation       Regression Test Add Event dan Laporan PCU

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/konfigurasi.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/pcu.robot
Resource            ../Keyword/event.robot
Resource            ../Keyword/kegiatan.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
#####################
# Buat Concept Note
#####################

Scenario 1: Login valid as Konsultan
    Login valid as Konsultan

Scenario 2 : Buat Concept Note
    Buat Concept Note    autobadrus4
    pcu.Fill Data Umum
    # rubah tanggal mulai dan akhir kegiatan di keyword ini
    Fill Data Pelaksanaan    PCU    Bengkulu    Yuni Ahmad
    Fill Data Event

Scenario 3: Close Browser
    Finish Testcase

###########################
# start buat laporan event
###########################

Scenario 4: Login valid as PCU
    Login valid as PCU

Scenario 5: PCU Membuat Laporan Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
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

Scenario 11 : Konsultan Revisi Laporan Tanpa Merubah
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event
    kegiatan.Kirim Revisi

Scenario 12 : Close Browser
    Finish Testcase

# ######################################
# # Edit Laporan Event dan Klik Lanjut
# ######################################

Scenario 13: Login valid as PCU
    Login valid as PCU

Scenario 14 : Search Nama Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event
    kegiatan.Enter Edit Laporan Event

Scenario 15 : Konsultan Merubah Revisi Laporan
    Fill Data Umum Event
    Click Lanjut Data Pelaksanaan Event
    Click Lanjut Data Event Dan Peserta
    Click Lanjut Laporan Keuangan Event
    Click Lanjut Kata Pengantar Event

Scenario 16 : Close Browser
    Finish Testcase

# ##########################
# # Approval Laporan Event
# ##########################

Scenario 17: Login valid as Konsultan
    Login valid as Konsultan

Scenario 18 : Search Nama Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Event

Scenario 19 : Konsultan Melakukan Approval
    kegiatan.Setuju Laporan Event
    kegiatan.Fill Catatan Setuju
    kegiatan.Click Button Kirim

Scenario 20 : Close Browser
    Finish Testcase

# ###################################
# # start buat laporan kemajuan event
# ###################################

Scenario 21: Login valid as PCU
    Login valid as PCU

Scenario 22 : PCU Membuat Laporan Kemajuan Event
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    pcu.Click Buat Laporan Kemajuan Event

Scenario 23 : Buat Laporan Substansi Kemajuan Event
    pcu.Click Lanjut Form Data Umum Kemajuan Event
    pcu.Click Lanjut Form Pelaksanaan Kemajuan Event
    pcu.Fill Form Data Event dan Peserta Kemajuan Event

Scenario 24 : Buat Laporan Keuangan Kemajuan Event
    event.Fill Laporan Keuangan Kemajuan Event

Scenario 25 : Close Browser
    Finish Testcase

# ######################################
# # kirim revisi laporan kemajuan event
# ######################################

Scenario 26 : Login valid as Konsultan
    Login valid as Konsultan

Scenario 27 : Revisi Laporan Kemajuan Event Tanpa Merubah
    # ganti item yang di cari di dalam keyword ini
    Search Event PCU    autobadrus6
    pcu.Click Button Cari
    Lihat Detail Event
    pcu.Click Tab Laporan Event
    event.Click Button Laporan Kemajuan Event
    event.Kirim Revisi Kemajuan Event

Scenario 28 : Close Browser
    Finish Testcase

# ######################################
# # start revisi laporan kemajuan event
# ######################################

Scenario 29: Login valid as PCU
    Login Valid as PCU

Scenario 30 : Revisi Laporan Kemajuan Event Tanpa Merubah
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

Scenario 31 : Close Browser
    Finish Testcase

######################################
# start revisi laporan kemajuan event
######################################

Scenario 32: Login valid as PCU
    Login Valid as PCU

Scenario 33 : Staff Melakukan Revisi Perubahan
    #    ganti item yang di cari di dalam keyword ini
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

Scenario 34: Close Browser
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


*** Keywords ***
Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open

Login valid as PCU
    Given Login page is open
    And Input Valid Username PCU
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
