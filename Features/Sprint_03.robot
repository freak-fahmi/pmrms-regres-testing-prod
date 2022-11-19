*** Settings ***
Documentation       Regression Test Sprint 03

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/pustaka.robot
Resource            ../Keyword/login.robot
Resource            ../Keyword/profile.robot
Resource            ../Keyword/administrasi.robot
Resource            ../Keyword/lupapassword.robot

*** Test Cases ***
#==============Reset Password===========#
Scenario 31: User mengklik label Lupa Password
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    [Teardown]  Finish Testcase
Scenario 31: User menginput username email Invalid
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    Input Email Tidak Valid
    Click Button Kirim
    Verify Email Invalid
    [Teardown]  Finish Testcase
Scenario 31: User menginput username email tidak diketahui
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    Input Email Tidak Diketahui
    Click Button Kirim
    Verify Email Tidak Diketahui
    [Teardown]  Finish Testcase
Scenario 31: User mengklik Label kembali ke Login dari page Lupa Password
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    Click Back Dari Input Email
    Click Button Kirim
    Verify Page Login
    [Teardown]  Finish Testcase
Scenario 31: User menginput Email Valid dan mengklik button kirim
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    Input Email Valid
    Click Button Kirim
    Verify Page Konfirmasi Email
    [Teardown]  Finish Testcase
Scenario 31: User mengklik Button kembali ke Login dari page konfirmasi Lupa Password
    [Setup]   Open Browser
    Click Button Lupa Password
    Verify Page Lupa Password
    Click Back Dari Konfirmasi Email
    Verify Page Login
    [Teardown]  Finish Testcase

#=============Menu Pustaka=============#
31 Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
31 Scenario : Menu pustaka
    Click Menu Pustaka
    Verify Page Dokumen Umum
31 Scenario : Upload file
   Click Button Upload File
   Verify Page Upload File
31 Scenario : Batal from page upload file
    pustaka.Click Button Batal
    Verify Page Dokumen Umum
31 Scenario : User Input Data MoM, Upload File dan Save
   Click Button Upload File
   Input Upload File MOM
   pustaka.Click Button Simpan
31 Scenario : User Input Data POM, Upload File dan Save
   Click Button Upload File
   Input Upload File POM
   pustaka.Click Button Simpan
31 Scenario : User Input Data AWP, Upload File dan Save
   Click Button Upload File
   Input Upload File AWP
   pustaka.Click Button Simpan
   [Teardown]  Finish Testcase

#=============Menu Profile=============#
156 Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
156 Scenario 2: User mengklik menu profil
    Click Menu Profile
    Click Button Profile
    Verify Page Profile
156 Scenario 3: User mengklik button edit mengupdate beberapa field lalu klik simpan
    profile.Click Button Edit Profile
    profile.Click Button Simpan
    Verify Page Profile
156 Scenario 4: User mengklik button batal dari page ubah profile
    Click Button Edit Profile
    profile.Click Button Batal
    Verify Page Profile
156 Scenario 5: User mengklik button ubah password
    Click Button Ubah Password
    Verify Page Ubah Password
156 Scenario 6: User mengklik button batal dari page ubah password
    profile.Click Button Batal
    Verify Page Profile
    [Teardown]  Finish Testcase


*** Keywords ***
