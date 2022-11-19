*** Settings ***
Documentation       Regression Test Profile

Library             SeleniumLibrary
Resource            ../Keyword/browser.robot
Resource            ../Keyword/profile.robot
Resource            ../Keyword/login.robot
#Test Setup    Open Browser
#Test Teardown    Finish Testcase


*** Test Cases ***
Scenario 1: Login with username valid and password valid
    Scenario : Login with username valid and password valid

Scenario 2: User mengklik menu profil
    Scenario : User mengklik menu profil

Scenario 3: User mengklik button edit mengupdate beberapa field lalu klik simpan
    Scenario : User mengklik button edit mengupdate beberapa field lalu klik simpan

Scenario 4: User mengklik button batal dari page ubah profile
    Scenario : User mengklik button batal dari page ubah profile

Scenario 5: User mengklik button ubah password
    Scenario : User mengklik button ubah password

Scenario 6: User mengklik button batal dari page ubah password
    Scenario : User mengklik button batal dari page ubah password
    Finish Testcase

Scenario 7 : Tambah Hapus Role Konsultan
    Login valid as Konsultan
    Sleep    2s
    Go To    https://pmrms.kemenag.go.id/profile
    Sleep    3s
    Scenario : User mengklik button edit mengupdate beberapa field lalu klik simpan
    Scenario : User mengklik button batal dari page ubah profile

Close Browser
    Finish Testcase


*** Keywords ***
Scenario : Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
#    Then Verify Home Page is open

Login valid as Konsultan
    Given Login page is open
    And Input Valid Username Konsultan
    And Input Valid Password
    When Click button submit

Scenario : User mengklik menu profil
    Click Menu Profile
    Click Button Profile
    Verify Page Profile

Scenario : User mengklik button edit mengupdate beberapa field lalu klik simpan
    Click Button Edit Profile
    Click Button Simpan
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
