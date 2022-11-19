*** Settings ***
Library     SeleniumLibrary
Library     String
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/event.robot
Resource    ../Xpath/kegiatan.robot


*** Keywords ***
Click Menu Event
    Wait Until Element Is Visible    ${menuEvent}    timeout=30s
    Click Element    ${menuEvent}

Verify Page Event
    Wait Until Element Is Visible    ${verifyEvent}    timeout=30s
    Page Should Contain Element    ${verifyEvent}

Click Button Cari
    Wait Until Element Is Visible    ${btnCari}
    Sleep    3s
    Click Element    ${btnCari}
    Sleep    5s

Search Pencarian by Nama Kegiatan
    [Arguments]    ${namaKegiatan}
    Go To    https://pmrms.kemenag.go.id/activity/event
    Sleep    3s
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${namaKegiatan}
    # Input Text    ${inputCari}    Automation Testing

Search Pencarian by Kode Kegiatan
    [Arguments]    ${kodeKegiatan}
    Go To    https://pmrms.kemenag.go.id/activity/event
    Sleep    2s
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${kodeKegiatan}
    # Input Text    ${inputCari}    1.2.321.123

Admin Search Tanggapan Peserta
    [Arguments]    ${kodeKegiatan}
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${kodeKegiatan}
    # Input Text    ${inputCari}    1.2.321.123

Search Pencarian by Nama Event
    [Arguments]    ${namaEvent}
#    Go To    https://pmrms.kemenag.go.id/activity/event
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${namaEvent}
    # Input Text    ${inputCari}    Automation

Verify Nama Kegiatan
    Wait Until Element Is Visible    ${verifyNamaEvent}    timeout=30s
    Page Should Contain Element    ${verifyNamaEvent}

Click Buat Laporan Kemajuan Event
    Sleep    2s
    Wait Until Element Is Visible    ${btnBuatLaporanKemajuanEvent}    timeout=10s
    Click Element    ${btnBuatLaporanKemajuanEvent}

Search Pencarian No Data
    [Arguments]    ${namaKegiatan}
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${namaKegiatan}
    # Input Text    ${inputCari}    testing123

Verify No Data
    Wait Until Element Is Visible    ${noData}    timeout=30s
    Page Should Contain Element    ${noData}

Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailperencanaan}    timeout=30s
    Execute JavaScript    document.evaluate("${lihatDetailperencanaan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${lihatDetailperencanaan}

Bendahara Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailEvaluasi}    timeout=30s
    Execute JavaScript    document.evaluate("${lihatDetailEvaluasi}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${lihatDetailEvaluasi}

PMU Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailpPmu}    timeout=30s
    Execute JavaScript    document.evaluate("${lihatDetailpPmu}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${lihatDetailpPmu}

Verify Page Detail Event
    Wait Until Element Is Visible    ${verifyDetail}    timeout=30s
    Page Should Contain Element    ${verifyDetail}

Click Button Kembali
    Wait Until Element Is Visible    ${btnKembali}    timeout=30s
    Click Element    ${btnKembali}

Click Button Keluar
    Execute JavaScript    document.evaluate("${btnKeluar}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Click Tab Calender Event
    Wait Until Element Is Visible    ${kalender}    timeout=30s
    Click Element    ${kalender}

Verify Page Calender Event
    Wait Until Element Is Visible    ${verifyJadwal}    timeout=30s
    Page Should Contain Element    ${verifyJadwal}

Click Tab Laporan Event
    Wait Until Element Is Visible    ${laporanEvent}    timeout=30s
    Click Element    ${laporanEvent}

Click Button Laporan Event
    Wait Until Element Is Visible    ${btnLaporanEvent}    timeout=30s
    Click Element    ${btnLaporanEvent}

Click Button Laporan Kemajuan Event
    Wait Until Element Is Visible    ${btnLaporanKemajuanEvent}    timeout=30s
    Click Element    ${btnLaporanKemajuanEvent}

Verify Page Detail Laporan Event
    Wait Until Element Is Visible    ${verifyDetailLaporanEvent}    timeout=30s
    Page Should Contain Element    ${verifyDetailLaporanEvent}

Click Button History
    Click Element    ${btnHistory}

Verify Page History
    Wait Until Element Is Visible    ${verifyHistoryCatatan}    timeout=30s
    Page Should Contain Element    ${verifyHistoryCatatan}

Click Button Close
    Click Element    ${btnClose}

Click Button Tambah Concept Note
    Click Element    ${btnConceptNote}

Click Button Pilih
    Click Element    ${btnPilih}

Pilih Concept Note
    Wait Until Element Is Visible    ${pilihItem}
    Click Element    ${pilihItem}

Click Element Buat Concept Note
    Wait Until Element Is Visible    ${btnBuatConceptNote}
    Click Element    ${btnBuatConceptNote}

Input Nama Event
    Wait Until Element Is Visible    ${nameEvent}    timeout=30s
    Input Text    ${nameEvent}    automation

Click Button Lanjut
#    Click Element    ${btnLanjut}
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Input Waktu Pelaksanaan kegiatan
    Input Text    ${tglMulai}    2023-07-05
    Input Text    ${tglAkhir}    2023-07-06

Pilih Tempat pelaksanaan
    Click Element    ${btnTptPelaksanaan}
    Click Element    ${btnPilihProvinsi}
    Input Text    ${searchProvinsi}    Jawa barat
    Click Element    ${pilihJabar}
    Click Element    ${pilihKota}
    Wait Until Element Is Visible    ${pilihBdg}    timeout=30s
    Click Element    ${pilihBdg}
    Click Element    ${btnSimpan}

Input Lokasi
    Wait Until Element Is Visible    ${inputLokasi}    timeout=30s
    Input Text    ${inputLokasi}    Bandung

Tambah Peserta Pelaksana
#    Click Element    ${tbhPesertaPelaksana}
    Execute JavaScript    document.evaluate("${tbhPesertaPelaksana}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Select From List By Index    ${UnitKerja}    0
    Click Element    ${btnPilihKomponen}
    Click Element    ${pilihKomponen}
    Wait Until Element Is Visible    ${btnTambahStaff}    timeout=30s
    Click Element    ${btnTambahStaff}
    Click Element    ${pilihStaff}
    Click Element    ${btnSimpan}

Input Latar Belakang Event
    Input Text    ${latarbelakangEvent}    Automation Testing

Input Deskripsi Event
    Input Text    ${descEvent}    Automation Testing

Input Tujuan Event
    Input Text    ${tujuanEvent}    Automation Testing

Input Output Event
    Input Text    ${outputEvent}    Automation Testing

Input Jumlah Peserta
    Input Text    ${jmlPeserta}    200

Submit Agenda Event
    Execute JavaScript    document.evaluate("${agendaEvent}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${agendaEvent}
    Choose File    ${inputFile}    D://Image/test.pdf
    Click Element    ${btnSimpan}

Pilih Narahubung
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
#    Scroll Element Into View    //label[text()='Sebelumnya']
    Execute JavaScript    document.evaluate("${btnNarahubung}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${btnNarahubung}
    Wait Until Element Is Visible    ${pilihNarahubung}    timeout=10s
    Execute JavaScript    document.evaluate("${pilihNarahubung}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

#    Click Element    ${pilihNarahubung}

Submit RAB Kegiatan
#    Click Element    ${rabKegiatan}
    Execute JavaScript    document.evaluate("${rabKegiatan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Choose File    ${inputFile}    D://Image/test.pdf
    Click Element    ${btnSimpan}

Click Button Simpan
    Wait Until Element Is Visible    ${SimpanBtn}    timeout=30s
    Execute JavaScript    document.evaluate("${SimpanBtn}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Sleep    10s

Click Button Setuju
    Execute JavaScript    document.evaluate("${btnSetuju}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Input Reason Setuju
    Input Text    ${reasonSetuju}    Automation Testing

Click Radio Button Ada Anggaran
    Click Element    ${radioAdaAnggaran}

Click Button Kirim
    Click Element    ${btnKirim}
    Sleep    5s

User Click Tab Tanggapan peserta
    Click Element    ${tabTanggapanPeserta}

User Click Broadcast Formulir
    Wait Until Element Is Visible    ${lblBroadcastFormulir}    timeout=30s
    Click Element    ${lblBroadcastFormulir}

User Upload file excel
    Choose File    ${uploadExcel}    ${CURDIR}/Excel/Template_Email.xlsx

User Click Button Broadcast Email
    Click Element    ${btnBroadcastEmail}

User Click Tab Tanggapan Evaluator
    Wait Until Element Is Visible    ${tabTanggapanEvaluator}    timeout=30s

Admin Click Tab Tanggapan peserta
    Click Element    ${tabTanggapanPeserta}
    Wait Until Element Is Visible    //td[text()='1.2.321.123 ']    timeout=30s

Admin Click Broadcast Formulir
    Wait Until Element Is Visible    ${lblBroadcastFormulir}    timeout=30s
    Click Element    ${lblBroadcastFormulir}

Admin Upload file excel
    Choose File    ${uploadExcel}    ${CURDIR}/Excel/Template_Email.xlsx

Admin Click Button Broadcast Email
    Click Element    ${btnBroadcastEmail}
    Sleep    3s

Admin Click Tab Tanggapan Evaluator
    Wait Until Element Is Visible    ${tabTanggapanEvaluator}    timeout=30s
    Click Element    ${tabTanggapanEvaluator}
    Wait Until Element Is Visible    //td[text()='1.2.321.123 ']    timeout=30s

Admin Click Hasil Broadcast Formulir
    Wait Until Element Is Visible    ${lblHasilBroadcast}    timeout=30s
    Click Element    ${lblHasilBroadcast}

Admin Verify Broadcast Formulir
    Wait Until Element Is Visible    ${verifyHasilBroadcast}    timeout=30s
    Page Should Contain Element    ${verifyHasilBroadcast}

Admin Click Close
    Sleep    3s
    Click Element    //button[@class='btn btn-secondary']

Admin Refresh Data
    Sleep    3s
    Click Element    //label[text()='Refresh Data']

User Click Hasil Formulir
    Wait Until Element Is Visible    (//td[@class='text-center']//button)[3]    timeout=10
    Click Element    (//td[@class='text-center']//button)[3]

User Verify Hasil Formulir
    Wait Until Element Is Visible    //li[text()='Hasil Formulir Tanggapan Peserta ']    timeout=10
    Page Should Contain Element    //li[text()='Hasil Formulir Tanggapan Peserta ']

Fill Data Umum
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    # ${nama}    Generate Random String    4    0123456789
    ${tema}    Generate Random String    4    0123456789
    ${kode}    Generate Random String    4    0123456789
    # Input Text    ${inputNamaEvent}    nama${nama}
    Input Text    ${inputTemaEvent}    LaporaneventLSP
    Input Text    ${inputKodeEvent}    kode${kode}
    Wait Until Element Is Visible    ${btnLanjut}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${btnLanjut}

Click Lanjut Form Pelaksanaan
    Wait Until Element Is Visible    (//button[text()='Lanjut'])[2]    timeout=10s
    Click Element    (//button[text()='Lanjut'])[2]

Fill Form Data Event dan Peserta
    Input Text    ${inputOutputEvent}    Test Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+900)
    Sleep    3s
    Wait Until Element Is Visible    ${inputJumlahPesertaEvent}    timeout=10s
    Input Text    ${inputJumlahPesertaEvent}    2
    Input Text    ${inputRingkasanPelaksanaanEvent}    Test Ringkasan Pelaksanaan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep    2s
    Input Text    ${inputEvaluasiEvent}    Test Input Evaluasi Event
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    2s
    Input Text    ${inputKesimpulanDanSaran}    Test Kesimpulan dan Saran Event
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("//aw-wizard-step[3]/div/div/div[15]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
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
    Click Element    //button[text()=' Lanjut ']

Edit Form Data Event dan Peserta
    Input Text    ${inputOutputEvent}    Test Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+900)
    Sleep    3s
    Wait Until Element Is Visible    ${inputJumlahPesertaEvent}    timeout=10s
    Input Text    ${inputJumlahPesertaEvent}    2
    Input Text    ${inputRingkasanPelaksanaanEvent}    Test Ringkasan Pelaksanaan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep    2s
    Input Text    ${inputEvaluasiEvent}    Test Input Evaluasi Event
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Wait Until Element Is Visible    (//button[text()=' Lanjut '])[1]    timeout=10s
    Click Element    (//button[text()=' Lanjut '])[1]

# Click Lanjut Form Data Event dan Peserta
#    Click Element    //button[text()=' Lanjut ']

Fill Form Data Event dan Peserta Kemajuan Event
    Input Text    ${inputOutputEvent}    Test Output Event
    Execute Javascript    window.scrollTo(0, window.scrollY+700)
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

Fill Laporan Keuangan
    Sleep    3s
    Input Text    ${inputSumberAnggaran}    test sumber Anggaran
    Input Text    ${inputNomorMAK}    MAK001
    Input Text    ${inputJumlahPaguAnggaran}    10000000
    Input Text    ${inputJumlahRealisasiAnggaran}    20000000
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload Rincian Realisasi Anggaran']/parent::*/parent::button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    ${btnsimpan}
    Sleep    2s
    Click Element    (//button[text()=' Lanjut '])[1]

Fill Laporan Keuangan Kemajuan Event
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload Rincian Realisasi Anggaran']/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    (//label[text()='Simpan'])[2]
    Sleep    3s
    Wait Until Element Is Visible    ${SimpanBtn}    timeout=10s
    Click Element    ${SimpanBtn}
    Sleep    5s

Click Simpan Laporan Keuangan Kemajuan Event
    Wait Until Element Is Visible    ${SimpanBtn}    timeout=10s
    Click Element    ${SimpanBtn}
    Sleep    5s

Click Lanjut Laporan Keuangan
    Wait Until Element Is Visible    (//button[text()=' Lanjut '])[1]    timeout=10s
    Click Element    (//button[text()=' Lanjut '])[1]

FIll Kata Pengantar
    Input Text    ${inputTotalDurasi}    100
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-report-event/div/div/div[3]/div/div[1]/div/div[8]/div/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Input Text    ${inputJumlahPeserta}    10
    Click Element    ${dropdownAsalPeserta}
    Click Element    ${divItemAsalPeserta}
    Click Element    (//label[text()='Simpan'])[2]
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${SimpanBtn}
    Sleep    5s
    Wait Until Element Is Visible    ${spanLaporanEvent}    timeout=30s

Click Lanjut Kata Pengantar
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Wait Until Element Is Visible    ${SimpanBtn}    timeout=10s
    Click Element    ${SimpanBtn}
    Sleep   5s

Click Download Laporan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+50000)
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+50000)
    Sleep    3s
    Wait Until Element Is Visible    ${btnDownloadLaporanEvent}    timeout=5s
    Click Element    ${btnDownloadLaporanEvent}
    Sleep    5s

Click Lanjut Form Data Umum Kemajuan Event
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+6000)
    Sleep    3s
    Click Element    (//button[text()='Lanjut'])[1]
    Sleep   3s

Click Lanjut Form Data Umum Kemajuan Event1
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Click Element    //button[text()='Lanjut']
    Sleep   3s


Click Lanjut Form Pelaksanaan Kemajuan Event
    Click Element    (//button[text()='Lanjut'])[2]
    Sleep   3s

Edit Form Pelaksanaan Kemajuan Event
    Input Text    //label[text()='Lokasi :']/following-sibling::div/input    Aula
    Click Element    (//button[text()='Lanjut'])[2]

Revisi Laporan Kemajuan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+30000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnSetujuLaporanEvent}    timeout=10s
    Click Element    ${btnSetujuLaporanEvent}

Kirim Revisi Kemajuan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnRevisiKemajuanEvent}    timeout=10s
    Click Element    ${btnRevisiKemajuanEvent}
    Wait Until Element Is Visible    ${textCatatanRevisi}    timeout=10s
    Input Text    ${textCatatanRevisi}    input revisi automation
    Wait Until Element Is Visible    ${btnKirimRevisi}
    Click Element    ${btnKirimRevisi}
    Sleep    5s

Enter Edit Laporan Kemajuan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+25000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnEditLaporanKemajuanEvent}    timeout=10s
    Click Element    ${btnEditLaporanKemajuanEvent}
    Sleep    3s

Setuju Laporan Kemajuan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+30000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnSetujuLaporanKemajuanEvent}    timeout=10s
    Click Element    ${btnSetujuLaporanKemajuanEvent}

Verify Download Button on Table Disabled
    [Arguments]    ${rowNumber}
    Page Should Contain Element
    ...    (//label[text()='Lihat'])[${rowNumber}]/parent::button/parent::div/following-sibling::div/button[@disabled]

Verify Download Button on Table Enabled
    [Arguments]    ${rowNumber}
    Page Should Contain Element
    ...    (//label[text()='Lihat'])[${rowNumber}]/parent::button/parent::div/following-sibling::div/button

Download Laporan from Table List
    [Arguments]    ${rowNumber}
    Wait Until Element Is Visible
    ...    (//label[text()='Lihat'])[${rowNumber}]/parent::button/parent::div/following-sibling::div/button
    Click Element    (//label[text()='Lihat'])[${rowNumber}]/parent::button/parent::div/following-sibling::div/button
    Sleep    3s

Lihat Detail Event From Table List
    [Arguments]    ${rowNumber}
    Wait Until Element Is Visible    (//label[text()='Lihat'])[${rowNumber}]    timeout=10s
    Click Element    (//label[text()='Lihat'])[${rowNumber}]

Download Concept Note from Detail Event
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)
    Sleep    6s
    Wait Until Element Is Visible    ${btnDownloadConceptNote}    timeout=10s
    Click Element    ${btnDownloadConceptNote}
    Sleep    4s
