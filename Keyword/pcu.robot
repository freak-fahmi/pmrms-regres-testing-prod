*** Settings ***
Library     SeleniumLibrary
Library     String
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
# Resource    ../Xpath/event.robot
# Resource    ../Xpath/kegiatan.robot
Resource    ../Xpath/pcu.robot


*** Keywords ***
Buat Concept Note
    [Arguments]    ${namaKegiatan}
    Go To    https://pmrms.kemenag.go.id/activity/event
    Wait Until Element Is Visible    ${btnTambahConceptNote}    timeout=10s
    Click Element    ${btnTambahConceptNote}
    Sleep   5s
    Wait Until Element Is Visible    ${dropdownPilihConceptNote}    timeout=10s
    Click Element    ${dropdownPilihConceptNote}
    Sleep    3s
    Wait Until Element Is Visible    //div[contains(text(), '${namaKegiatan}')]    timeout=10s
    Click Element    //div[contains(text(), '${namaKegiatan}')]
    # Click Element    ${labelConceptNoteItemFirst}
    Wait Until Element Is Visible    ${btnBuatConceptNote}    timeout=10s
    Click Element    ${btnBuatConceptNote}
    Sleep    3s


Fill Data Umum
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    2s
    # Input Text    ${inputNamaEvent}    Automation Input Nama Event
    Input Text    //textarea[@placeholder='Nama Event']    Coba1
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    2s
    Click Element    ${btnLanjut}


Fill Data Umum Koordinator
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    2s
    # Input Text    ${inputNamaEvent}    Automation Input Nama Event
    Input Text    //textarea[@placeholder='Nama Event']    Eventbahagia1
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    2s
    Click Element    ${btnLanjut}


Fill Data Pelaksanaan
    [Arguments]    ${pesertaUnitKerja}    ${pesertaProvinsi}    ${pesertaNama}
    Sleep    2s
#    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
#    Sleep    2s
    Input Text    ${inputLokasi}    Automation Input Lokasi
    # tanggal mulai dan akhir kegiatan
    # Input Text    ${tanggalMulaiKegiatan}    2022-08-30
    # Input Text    ${tanggalAkhirKegiatan}    2022-08-07
    ########################
    # Tempat Pelaksanaan:
    ########################
#    Click Element    ${buttonTempatPelaksanaan}
    Execute JavaScript    document.evaluate("${buttonTempatPelaksanaan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${btnPilihProvinsi}    timeout=10s
    Click Element    ${btnPilihProvinsi}
    Wait Until Element Is Visible    ${labelProvinsiFirst}    timeout=10s
    Click Element    ${labelProvinsiFirst}
    Wait Until Element Is Visible    ${btnSimpanProvinsi}    timeout=10s
    Click Element    ${btnSimpanProvinsi}
    ########################
    # Peserta Pelaksanaan (Staf)
    ########################
    # click tambah peserta button
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-concept-note/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[2]/div/div/div[6]/div/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Wait Until Element Is Visible    ${dropdownUnitKerja}    timeout=10s
    Select From List By Value    ${dropdownUnitKerja}    ${pesertaUnitKerja}
    Sleep    3s
    # delete already added peserta by sistem
    Execute Javascript
    ...    document.evaluate("/html/body/ngb-modal-window/div/div/div[2]/div/div[3]/div/ul/li/div/div[2]/i", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Wait Until Element Is Visible    ${dropdownProvinsi}    timeout=10s
    Click Element    ${dropdownProvinsi}
    # Wait Until Element Is Visible    ${labelProvinsiPeserta}    timeout=10s
    # Click Element    ${labelProvinsiPeserta}
    Wait Until Element Is Visible    //span[text()='${pesertaProvinsi}']/parent::div    timeout=10s
    Click Element    //span[text()='${pesertaProvinsi}']/parent::div
    Wait Until Element Is Visible    ${divTambahStafPeserta}    timeout=10s
    Click Element    ${divTambahStafPeserta}
    Sleep    3s
    # click desired item on Tambah Staf dropdown popup based on ${pesertaNama}
    Execute Javascript
    ...    document.evaluate("//label[(text()='${pesertaNama} ')]", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Wait Until Element Is Visible    ${btnSimpanPeserta}    timeout=10s
    Click Element    ${btnSimpanPeserta}
    ########################
    # click lanjut to next form
    ########################
    Wait Until Element Is Visible    (//button[text()='Lanjut'])[2]    timeout=10s
    Click Element    (//button[text()='Lanjut'])[2]
    Sleep    5s

Fill Data Event
    Sleep    5s
    Wait Until Element Is Visible    ${inputLatarBelakangEvent}    timeout=10s
    Input Text    ${inputLatarBelakangEvent}    Automation Latar Belakang Event
    Input Text    ${inputDeskripsiEvent}    Automation Input Deskripsi Event
    Input Text    ${inputTujuanEvent}    Automation Input Tujuan Event
    Input Text    ${inputOutputEvent1}    Automation Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s
    Input Text    //label[text()='Jumlah Peserta']/following-sibling::div/input    2
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnPilihNarahubung}    timeout=10s
    Click Element    ${btnPilihNarahubung}
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("/html/body/div[2]/div/div/div/div[2]/div/label", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Sleep    2s
    # upload agenda kegiatan
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-concept-note/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[10]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    (//label[text()='Simpan'])[2]
    # upload RAB Kegiatan
    Sleep    3s
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-concept-note/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[12]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    (//label[text()='Simpan'])[2]
    # click Simpan form
    Sleep    2s
    Wait Until Element Is Visible    //label[text()='Simpan']    timeout=10s
    Click Element    //label[text()='Simpan']
    Sleep    5s

Search Event PCU
    [Arguments]    ${namaEvent}
    Go To    https://pmrms.kemenag.go.id/activity/event
    Sleep    2s
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    # Input Text    ${inputCari}    1.1.25.1
    Input Text    ${inputCari}    ${namaEvent}


Search Event Staff
    [Arguments]    ${namaEvent}
    Go To    https://pmrms.kemenag.go.id/activity/event
    Sleep    2s
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    # Input Text    ${inputCari}    1.1.25.1
    Input Text    ${inputCari}    ${namaEvent}

Click Button Cari
    Sleep    2s
    Click Element    ${btnCari}
    Sleep    2s

Lihat Detail Event
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Wait Until Element Is Visible    (//label[text()='Lihat'])[1]    timeout=10s
    Click Element    (//label[text()='Lihat'])[1]
    # Wait Until Element Is Visible    (//label[text()='Lihat'])[4]    timeout=10s
    # Click Element    (//label[text()='Lihat'])[4]

Click Tab Laporan Event
    Wait Until Element Is Visible    ${laporanEvent}    timeout=30s
    Click Element    ${laporanEvent}

Click Buat Laporan Event
    Wait Until Element Is Visible    ${btnBuatLaporanEvent}    timeout=30s
    Click Element    ${btnBuatLaporanEvent}

Click Buat Laporan Kemajuan Event
    Wait Until Element Is Visible    ${btnBuatLaporanKemajuanEvent}    timeout=30s
    Click Element    ${btnBuatLaporanKemajuanEvent}

Input data Event Umum
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+7000)
    Sleep    3s
    Click Element    ${btnLanjut}

Fill Data Umum Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    # ${nama}    Generate Random String    4    0123456789
    ${tema}    Generate Random String    4    0123456789
    ${kode}    Generate Random String    4    0123456789
    # Input Text    ${inputNamaEvent}    nama${nama}
    Input Text    ${inputTemaEvent}    tema${tema}
    Input Text    ${inputKodeEvent}    kode${kode}
    Wait Until Element Is Visible    ${btnLanjut}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${btnLanjut}

Click Lanjut Data Pelaksanaan Event
    Wait Until Element Is Visible    (//button[text()='Lanjut'])[2]    timeout=10s
    Click Element    (//button[text()='Lanjut'])[2]

Fill Data Event dan Peserta New
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s
    Input Text    ${inputJumlahPesertaEvent}    2
    Execute Javascript    window.scrollTo(0, window.scrollY+10)
    Sleep    2s
    Input Text    ${inputRingkasanPelaksanaanEventNew}    Automation RIngkasan Pelaksanaan Event
    Click Element    //button[text()=' Upload Dokumentasi Kegiatan ']
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Input Text    ${inputJudulDokumenKegiatan}    judul dokumen kegiatan test
    Input Text    ${inputDeskripsiDokumenKegiatan}    deskripsidokumen kegiatan test
    Input Text    ${inputTanggalDokumenKegiatan}    2022-08-29
    Input Text    ${inputTempatDokumenKegiatan}    Bekasi
    Click Element    (//div[contains(@class,'ng-select-container')])
    Click Element    ${divItemJenisDokumentasi}
    Click Element    //label[text()='Simpan']
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("(//label[text()='Upload Lampiran'])[2]/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    //label[text()='Simpan']
    Click Element    (//button[text()=' Lanjut '])[1]

Fill Data Event dan Peserta
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s
    Input Text    ${inputJumlahPesertaEvent}    2
    Execute Javascript    window.scrollTo(0, window.scrollY+700)
    Sleep    2s
    Input Text    ${inputRingkasanPelaksanaanEvent}    Automation RIngkasan Pelaksanaan Event
    Input Text    ${inputEvaluasiEvent}    Automation Evaluasi Event
    Execute Javascript    window.scrollTo(0, window.scrollY+1000)
    Sleep    2s
    Input Text    (//ckeditor)[5]/div[2]/div[2]/div    Automation Kesimpulan dan Saran Event
    # Click Element    (//button[text()=' Lanjut '])[1]
    # upload dokumentasi kegiatan
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-report-event/div/div/div[3]/div/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[15]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Input Text    ${inputJudulDokumenKegiatan}    judul dokumen kegiatan test
    Input Text    ${inputDeskripsiDokumenKegiatan}    deskripsidokumen kegiatan test
    Input Text    ${inputTanggalDokumenKegiatan}    2022-08-29
    Input Text    ${inputTempatDokumenKegiatan}    Bekasi
    Click Element    (//div[contains(@class,'ng-select-container')])
    Click Element    ${divItemJenisDokumentasi}
    Click Element    //label[text()='Simpan']
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("(//label[text()='Upload Lampiran'])[2]/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    //label[text()='Simpan']
    Click Element    (//button[text()=' Lanjut '])[1]

Click Lanjut Data Event Dan Peserta
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Wait Until Element Is Visible    (//button[text()=' Lanjut '])[1]    timeout=10s
    Click Element    (//button[text()=' Lanjut '])[1]
    Sleep    5s

Fill Laporan Keuangan Event New
    Sleep    3s
#    Input Text    ${inputSumberAnggaran}    test sumber Anggaran
#    Input Text    ${inputNomorMAK}    MAK001
#    Input Text    ${inputJumlahPaguAnggaran}    10000000
#    Input Text    ${inputJumlahRealisasiAnggaran}    20000000
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload Rincian Realisasi Anggaran']/parent::*/parent::button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    (//label[text()='Simpan'])[2]
    Sleep    2s
    Click Element    //label[text()='Simpan']

Fill Laporan Keuangan Event
    Sleep    3s
    Input Text    ${inputSumberAnggaran}    test sumber Anggaran
    Input Text    ${inputNomorMAK}    MAK001
    Input Text    ${inputJumlahPaguAnggaran}    10000000
    Input Text    ${inputJumlahRealisasiAnggaran}    20000000
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload Rincian Realisasi Anggaran']/parent::*/parent::button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    (//label[text()='Simpan'])
    Sleep    2s
    Click Element    (//button[text()=' Lanjut '])[1]

Click Lanjut Laporan Keuangan Event
    Wait Until Element Is Visible    (//button[text()=' Lanjut '])[1]    timeout=10s
    Click Element    (//button[text()=' Lanjut '])[1]

FIll Kata Pengantar Event
    Input Text    ${inputTotalDurasi}    100
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-report-event/div/div/div[3]/div/div[1]/div/div[8]/div/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Input Text    //label[text()='Jumlah Peserta :']/following-sibling::*/input    10
    Click Element    ${dropdownAsalPeserta}
    Click Element    ${divItemAsalPeserta}
    Click Element    (//label[text()='Simpan'])[2]
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${lblbtnSimpan}
    Sleep    5s
    # Wait Until Element Is Visible    ${laporanEvent}    timeout=30s

Click Lanjut Kata Pengantar Event
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Wait Until Element Is Visible    ${lblbtnSimpan}    timeout=10s
    Click Element    ${lblbtnSimpan}
    Sleep    6s

Click Lanjut Form Data Umum Kemajuan Event
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+6000)
    Sleep    3s
    Click Element    (//button[text()='Lanjut'])[1]

Click Lanjut Form Pelaksanaan Kemajuan Event
    Click Element    (//button[text()='Lanjut'])[2]

Fill Form Data Event dan Peserta Kemajuan Event
    Sleep    3s
    Input Text    (//ckeditor)[1]/div[2]/div[2]/div    Test Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+900)
    Sleep    3s
    Input Text    ${inputRingkasanPelaksanaanKemajuanEvent}    Test Ringkasan Pelaksanaan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-progress-event/div/div/div[3]/div/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[10]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Input Text    ${inputJudulDokumenKegiatan}    judul dokumen kegiatan test
    Input Text    ${inputDeskripsiDokumenKegiatan}    deskripsidokumen kegiatan test
    Input Text    ${inputTanggalDokumenKegiatan}    2022-08-29
    Input Text    ${inputTempatDokumenKegiatan}    Bekasi
    Click Element    (//div[contains(@class,'ng-select-container')])
    Click Element    ${divItemJenisDokumentasi}
    Click Element    ${btnsimpan}
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("(//label[text()='Upload Lampiran'])[2]/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    //label[text()='Simpan']
    Click Element    (//button[text()=' Lanjut '])[1]

Edit Form Data Event dan Peserta Kemajuan Event
    Sleep    3s
    Input Text    (//ckeditor)[1]/div[2]/div[2]/div    Test Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+900)
    Sleep    3s
    Input Text    ${inputRingkasanPelaksanaanKemajuanEvent}    Test Ringkasan Pelaksanaan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep    2s
    Click Element    (//button[text()=' Lanjut '])[1]
