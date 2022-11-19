*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Xpath/konfigurasi.robot


*** Keywords ***
Click Menu Konfigurasi
    go to    https://pmrms.kemenag.go.id/configuration/list
#    Wait Until Element Is Visible    ${menuKonfigurasi}
#    Click Element    ${menuKonfigurasi}

Verify Page Konfigurasi
    Wait Until Element Is Visible    ${verifyPengguna}
    Page Should Contain Element    ${verifyPengguna}

Verify No Konfigurasi Menu
    Sleep    3s
    Page Should Not Contain Element    ${menuKonfigurasi}

Click Button Tambah Pengguna
    Wait Until Element Is Visible    ${tambahPengguna}
    Sleep   3s
    Click Element    ${tambahPengguna}

Verify Page Tambah Pengguna
    Wait Until Element Is Visible    ${verifyTambahPengguna}
    Page Should Contain Element    ${verifyTambahPengguna}

Input Nama Depan
    ${numbers}=    Generate Random String    4    0123456789
    Input Text    ${inputNamaDepan}    test${numbers}

Input Nama Belakang
    ${numbers}=    Generate Random String    4    0123456789
    Input Text    ${inputNamaBelakang}    auto${numbers}

input Email
    ${numbers}=    Generate Random String    4    0123456789
    Input Text    ${email}    automation${numbers}

Click Button Cari
    Wait Until Element Is Visible    ${btnCari}
    Click Element    ${btnCari}

Search Pencarian by Nama Lengkap
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}    Abiratno

Verify Nama Lengkap
    Wait Until Element Is Visible    ${verifyNamaLengkap}
    Page Should Contain Element    ${verifyNamaLengkap}

Search Pencarian by Email
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}    ptm18@madrasah.kemenag.go.id

Search Pencarian No Data
    [Arguments]    ${namaKegiatan}
    Go To    https://pmrms.kemenag.go.id/configuration/list
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}    ${namaKegiatan}
    # Input Text    ${inputCari}    testing123

Verify No Data
    Wait Until Element Is Visible    ${noData}
    Page Should Contain Element    ${noData}

Verify Email
    Wait Until Element Is Visible    ${verifyEmail}
    Page Should Contain Element    ${verifyEmail}

Click Tambah Role
    Click Element    ${btnTambahRole}

Select Unit Kerja
    Select From List By Index    ${selectUnitKerja}    1

select Komponent
    Click Element    ${PilihUnit}
#    Click Element    ${pilihUnitPCU}

pilih komponen
    Click Element    ${komponen}

Select Role
    Click Element    ${roleStaff}

Select Role LSP
#    Click Element    ${roleLSP}
    Click Element    ${rolePCU}

Input Start Date
    Input Text    ${startDate}    2022-03-06

Input End Date
    Input Text    ${EndDate}    2022-12-06

Click Tambah Kegiatan
    Click Element    ${addKegiatan}

Click Pilih
    Click Element    ${pilih}

Click Ubah Photo
    Click Element    ${btnUbahPhoto}

Select Image
    Choose File    ${inputPhoto}    ${CURDIR}/Image/testing.png

Click Simpan Upload Photo
    Click Element    ${btnSimpanUploadPhoto}

Input Data Tambah Pengguna
    ${numbers}=    Generate Random String    4    0123456789
    input Text    ${inputNamaDepan}    test${numbers}
    Input Text    ${inputNamaBelakang}    auto${numbers}
    Input Text    ${email}    automation${numbers}
    Select From List By Index    ${selectUnitKerja}    0
    Click Element    ${PilihUnit}
    Click Element    ${komponen}
    Click Element    ${btnTambahRole}
    Click Element    ${roleLSP}
    Input Text    ${startDate}    2022-03-06
    Input Text    ${EndDate}    2022-12-06
    Wait Until Element Is Visible    ${addKegiatan}
    Execute JavaScript    document.evaluate("${addKegiatan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Click Element    ${pilih}
    Wait Until Element Is Visible    ${selectItem}
    Click Element    ${selectItem}
    Click Element    ${btnTambah}
    Click Element    ${btnUbahPhoto}
    Choose File    ${inputPhoto}    ${CURDIR}/Image/testing.png
    Click Element    ${btnSimpanUploadPhoto}

Input Data Tambah Administrator
    ${numbers}=    Generate Random String    4    0123456789
    input Text    ${inputNamaDepan}    test${numbers}
    Input Text    ${inputNamaBelakang}    auto${numbers}
    Input Text    ${email}    automation${numbers}
    Select From List By Index    ${selectUnitKerja}    0
    Click Element    ${PilihUnit}
    Click Element    ${komponen}
    Sleep    3s
    Click Element    ${btnTambahRole}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Click Element    //label[text()='Administrator']
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Input Text        //input[@placeholder='Nomor Telepon']       08569468${numbers}
    Click Element    ${plhjabatan}
#    Execute JavaScript    document.evaluate("${plhjabatan}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Click Element    //span[text()='Advisor in Quality Education and Management']
    Sleep    3s
    Click Element    //label[text()='Pilih Supervisor']
    Click Element    //label[text()='Muhammad Farman Izhar (Consultant for e-RKAM Program,EDM Program and Incentive Madrasah)']

Click Button Simpan Tambah Pengguna
#    Wait Until Element Is Visible    ${btnSimpan}
    Execute JavaScript    document.evaluate("${btnSimpanPengguna}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Click Button Batal Tambah Pengguna
    Wait Until Element Is Visible    ${btnBatalPengguna}
#    Click Element    ${btnBatal}
    Execute JavaScript    document.evaluate("${btnBatalPengguna}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Input Data Tambah Pengguna PCU
    [Arguments]    ${noTelp}    ${jabatan}    ${namaSupervisor}
    ${numbers}=    Generate Random String    4    0123456789
    input Text    ${inputNamaDepan}    test${numbers}
    Input Text    ${inputNamaBelakang}    auto${numbers}
    Input Text    ${email}    automation${numbers}
    Select From List By Index    ${selectUnitKerja}    1
    Click Element    ${pilihProvinsi}
    Click Element    ${Provinsi}
    Click Element    ${btnTambahRole}
    Click Element    ${rolePCU}
    Input Text    ${InputNoTelp}    ${noTelp}
#    Scroll Element Into View    ${btnBatalPengguna}
    Sleep    5s
    Input Text    ${Jabatan2}    ${jabatan}
    Execute JavaScript    document.evaluate("${pilihJabatan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${PilihSupervisor}
    Execute Javascript    document.evaluate("${PilihSupervisor}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    # Execute Javascript    document.evaluate("//label[text()='Doni Wibowo (Secretary PMU)']",
    # ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    # ...    snapshotItem(0).click();
    Execute Javascript
    ...    document.evaluate("//label[text()='${namaSupervisor}']", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Sleep    2s
    Click Element    //label[text()='Supervisor']
    Execute Javascript    window.scrollTo(0, window.scrollY-1000)
    Sleep    2s
    Click Element    ${btnUbahPhoto}
    Choose File    ${inputPhoto}    ${CURDIR}/Image/testing.png
    Click Element    ${btnSimpanUploadPhoto}
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s

Click Button Simpan Tambah Pengguna PCU
    Execute JavaScript    document.evaluate("${btnSimpanPengguna}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Ready Database
    Click Element    ${btnOK}
    Click Element    ${btnBatal}

Klik Simpan
    ${pilih_ok}=    run keyword and return status
    ...    page should contain element    ${btnOK}
    log to console    ${pilih_ok}
    IF    '${pilih_ok}'=='True'    Ready Database

Input Cari Pengguna
    Wait Until Element Is Visible    ${textCariPengguna}    timeout=10s
    Input Text    ${textCariPengguna}    komponen 1
    Click Element    ${btnCari}

Lihat Detail Pengguna
    Wait Until Element Is Visible    ${btnLihat}
    Sleep    3s
    Click Element    ${btnLihat}

Click Edit Kegiatan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+1500)
    Sleep    2s
    Wait Until Element Is Visible    ${btnEditKegiatan}    timeout=10s
    Click Element    ${btnEditKegiatan}

Tambah Kegiatan
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+15000)
    Wait Until Element Is Visible    ${btnTambahKegiatan}    timeout=10s
    Sleep    2s
    Click Element    ${btnTambahKegiatan}

Pilih Kegiatan and Submit
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+1500)
    Wait Until ELement Is Visible    ${dropdownPilihKegiatan}    timeout=10s
    Click Element    ${dropdownPilihKegiatan}
    Wait Until Element Is Visible    ${divPilihKegiatanFirst}    timeout=10s
    Click Element    ${divPilihKegiatanFirst}
    Wait Until Element Is Visible    ${btnSubmitKegiatan}    timeout=10s
    Click Element    ${btnSubmitKegiatan}
    Wait Until Element Is Visible    ${lblSimpan}
    Click Element    ${lblSimpan}

User Click Tambah Formulir
    Click Element    ${tbhFormulir}

User Pilih Type Kegiatan
    Wait Until Element Is Visible    ${TypeKegiatan}    timeout=10
    Click Element    ${TypeKegiatan}
    Wait Until Element Is Visible    ${plhKegiatan}    timeout=10
    Click Element    ${plhKegiatan}

User Click Buat Formulir
    Click Element    ${btnBuatFormulir}

User Tambah Formulir
    Wait Until Element Is Visible    ${tbhPertanyan}    timeout=10s
    Click Element    ${tbhPertanyan}
    Click Element     ${inputprtanyaan}
    Input Text     ${inputprtanyaan}  Ada notula kegiatan/rapat
    Click Element    //span[text()='Ada notula kegiatan/rapat']
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Click Element    ${tbhPertanyaanYaorTidak}
    Click Element    (//div[@role='combobox']//input)[2]
    Input Text     (//div[@role='combobox']//input)[2]   Ada notula kegiatan/rapat
    Click Element   (//span[text()='Ada notula kegiatan/rapat'])[2]

User Click Button Simpan
    Execute JavaScript    document.evaluate("${lblSimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

User Search Formulir
    Go To    https://pmrms.kemenag.go.id/configuration/list-event
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    sosialisasi
    Click Element    //button[text()='Cari']

User Hapus Formulir
    Wait Until Element Is Visible    //i[@class='fa fa-trash-alt']    timeout=30s
    Sleep    3s
    Click Element    //i[@class='fa fa-trash-alt']
    Wait Until Element Is Visible    //label[text()='Hapus']    timeout=30s
    Click Element    //label[text()='Hapus']
    Sleep    5s
