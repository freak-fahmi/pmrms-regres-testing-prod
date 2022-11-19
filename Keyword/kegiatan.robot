*** Settings ***
Library     SeleniumLibrary
Library     String
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/kegiatan.robot
#Resource    ../Keyword/awp.robot


*** Variables ***
${text}


*** Keywords ***
Click Menu Kegiatan
    Wait Until Element Is Visible    ${menuKegiatan}    timeout=30s
    Click Element    ${menuKegiatan}

Verify Page Kegiatan
    Wait Until Element Is Visible    ${verifyKegiatan}    timeout=30s
    Page Should Contain Element    ${verifyKegiatan}

Click Button Cari
    Click Element    ${btnCari}
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+3000)

Search Pencarian by Nama Kegiatan
    [Arguments]    ${namaKegiatan}
    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
    Sleep    2s
    Wait Until Element Is Visible    ${inputCari}    timeout=30s
    Input Text    ${inputCari}    ${namaKegiatan}

Verify Nama Kegiatan
    Wait Until Element Is Visible    ${verifyNamaKegiatan}
    Page Should Contain Element    ${verifyNamaKegiatan}

Filter by Tahun
    Wait Until Element Is Visible    ${filterTahun}    timeout=30s
    Click Element    ${filterTahun}
    Click Element    ${pilihTahun}

Search Pencarian No Data
    [Arguments]    ${namaKegiatan}
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}    ${namaKegiatan}
    # Input Text    ${inputCari}    testing123

Verify No Data
    Wait Until Element Is Visible    ${noData}
    Page Should Contain Element    ${noData}

Click Button Lihat Kegiatan
    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
    Wait Until Element Is Visible    ${lblLihatDetail}        timeout=30s
    Click Element    ${lblLihatDetail}

Click Button Lihat Kegiatan Kontribusi
#    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
    Wait Until Element Is Visible    ${lblLihatDetail}        timeout=30s
    Click Element    ${lblLihatDetail}

Click Sorting Status
    Wait Until Element Is Visible    ${sorting}    timeout=30s
    Click Element    ${sorting}

Click Sorting Status Asc
    Click Element    ${sorting}
    Sleep    3s
    Click Element    ${sorting}

Click Button Lihat Kegiatan New
    Sleep    5s
    Wait Until Element Is Visible    ${btnLihatDetailNew}    timeout=30s
    Execute JavaScript    document.evaluate("${btnLihatDetailNew}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

#    Click Element    ${btnLihatDetailNew}

Click Button Lihat Kegiatan Perencanaan
    Sleep    3s
    Wait Until Element Is Visible    ${btnLihatDetailRencana}    timeout=30s
    Click Element    ${btnLihatDetailRencana}

Click Button Lihat Menunggu Persetujuan
    Sleep    3s
    Wait Until Element Is Visible    ${btnLihatPersetujuan}    timeout=30s
    Click Element    ${btnLihatPersetujuan}

Verify Page Detail Kegiatan
    Wait Until Element Is Visible    ${verifyDetail}
    Page Should Contain Element    ${verifyDetail}

Click Button keluar
    Go To    https://pmrms.kemenag.go.id/implement/kegiatan
    Wait Until Element Is Visible    //label[text()='Lihat']    timeout=10s
    Click Element    //label[text()='Lihat']
    Wait Until Element Is Visible    ${btnKeluar}    timeout=30s
    Execute JavaScript    document.evaluate("${btnKeluar}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${btnKeluar}

Click Button Kembali
#    Click Element    ${btnKembali}
    Execute JavaScript    document.evaluate("${btnKembali}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Click Button Implementasi Kegiatan
    Wait Until Element Is Visible    ${btnImplementasiKegiatan}    timeout=30s
    Execute JavaScript    document.evaluate("${btnImplementasiKegiatan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${btnImplementasiKegiatan}

Input Data Umum
    Wait Until Element Is Visible    ${tbhKodePOK}    timeout=30s
#    Click Element    ${tbhKodePOK}
    Execute JavaScript    document.evaluate("${tbhKodePOK}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${pilihKodeAkun}    timeout=30s
    Execute JavaScript    document.evaluate("${pilihKodeAkun}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Input Text    ${budgetPOK}    100000

#    Click Element    ${btnLanjut}
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Sleep    3s
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Input Data Kegiatan
    Execute JavaScript    document.evaluate("${btnLanjut}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

Tambah Kontribusi Output Kegiatan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    2s
    Click Element    //button[text()=' Tambah Kontribusi Output Kegiatan ']
    Click Element    //label[text()='Pilih Output Kegiatan']
    Sleep    3s
    Wait Until Element Is Visible    css= .show.dropdown-menu div:nth-of-type(1) > .form-check-label          timeout=10s
    Click Element    css= .show.dropdown-menu div:nth-of-type(1) > .form-check-label
    Click Element    (//div[@role='combobox']//input)[2]
    Click Element    //div[@role='option']//span[1]
    Click Element    (//label[text()='Simpan'])[2]


Input Data Pelaksanaan
    Wait Until Element Is Visible    ${inputAsumsi}
    Input Text    ${inputAsumsi}    Automation Testing
    Input Text    ${inputResiko}    Automation testing
    Input Text    ${InputKetResiko}    Beban
    Sleep    3s
    Click Element    ${pilihKetResiko}
    Execute JavaScript    document.evaluate("${angkapotensi}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${angkapotensi}
    Execute JavaScript    document.evaluate("${angkadampak}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
#    Click Element    ${angkadampak}

Click Button Simpan
    Wait Until Element Is Visible    ${btnsimpan}
    Execute JavaScript    document.evaluate("${btnsimpan}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();

User Logout
    Click Element    ${profile}
    Click Element    ${btnLogout}

Coordinator Quality Entry
    Wait Until Element Is Visible    ${qualityEntry}
    Execute JavaScript    document.evaluate("${qualityEntry}",
    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
    ...    snapshotItem(0).click();
    Click Element    ${entry1}
    Click Element    ${entry2}
    Click Element    ${entry3}
    Click Element    ${entry4}
    Click Element    ${entry5}
    Click Element    ${entry6}
    Click Element    ${entry7}
    Click Element    ${simpanQuality}

Click Button Setuju
#    Wait Until Element Is Visible    ${btnSetuju}           timeout=30s
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Click Element    ${buttonSetuju}
#    Execute JavaScript    document.evaluate("${lblSetuju}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
    Sleep    3s

Click Button Setuju PMU
#    Wait Until Element Is Visible    ${btnSetuju}           timeout=30s
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    3s
    Click Element    ${setujuApproval}
#    Execute JavaScript    document.evaluate("${lblSetuju}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
    Sleep    3s
Input Catatan
    Input Text    ${catatan}    automation testing

Input Catatan Setuju
    Input Text    ${catatanSetuju}    automation testing

Click Button Kirim
    Click Element    ${buttonKirim}
#    Execute JavaScript    document.evaluate("${lblKirim}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
    Sleep    5s

Click Button Kirim pmu
    Click Element    ${btnKirimPMU}
#    Execute JavaScript    document.evaluate("${lblKirim}",
#    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#    ...    snapshotItem(0).click();
    Sleep    5s

Click Laporan Kegiatan
    Wait Until Element Is Visible    ${spanLaporanKegiatan}    timeout=10s
    Click Element    ${spanLaporanKegiatan}

Click Buat Laporan Event
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Wait Until Element Is Visible    ${btnBuatLaporanEvent}    timeout=10s
    Click Element    ${btnBuatLaporanEvent}

Click Buat Laporan Kegiatan
    Wait Until Element Is Visible    ${btnBuatLaporanKegiatan}    timeout=10s
    Click Element    ${btnBuatLaporanKegiatan}

Fill Data Umum
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    ${nama}    Generate Random String    4    0123456789
    ${tema}    Generate Random String    4    0123456789
    ${kode}    Generate Random String    4    0123456789
    Wait Until Element Is Visible       ${inputNamaEvent}   timeout=10s
    Input Text    ${inputNamaEvent}    LaporanLSP2
    Input Text    ${inputTemaEvent}    tema${tema}
    Input Text    ${inputKodeEvent}    kode${kode}
    Wait Until Element Is Visible    ${btnLanjut}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${btnLanjut}

Fill Form Pelaksanaan
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Wait Until Element Is Visible    ${inputLokasi}    timeout=10s
    Input Text    ${inputLokasi}    Bekasi
    Click Element    ${inputTempatPelaksanan}
    Wait Until Element Is Visible    ${labelPilihProvinsi}
    Click Element    ${labelPilihProvinsi}
    Click Element    ${labelProvinsiAceh}
    Click Element    ${btnsimpan}
    Click Element    (//button[text()='Lanjut'])[2]

Click Lanjut Form Pelaksanaan
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    (//button[text()='Lanjut'])[2]

Fill Form Data Event dan Peserta
    Input Text    ${inputDeskripsiEvent}    test desc event
    Input Text    ${inputTujuanEvent}    test tujuan event
    Input Text    ${inputJumlahPesertaEvent}    2
    Sleep    3s
    Input Text    ${inputRingkasanPelaksanaanEvent1}    test ringkasan
    Sleep    3s
    Input Text    ${inputEvaluasiEvent1}    test evaluasi
    Sleep    2s
    Input Text    ${inputKesimpulanDanSaranEvent}    test kesimpulan
    Sleep    3s
    Click Element    ${dropdownFormulirEvaluasiEvent}
    Click Element    ${divItemFormulirEvaluasi}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Execute Javascript
    ...    document.evaluate("(//label[text()='Upload Lampiran'])[2]/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    ${btnsimpan}
    Sleep    3s
    Execute Javascript
    ...    document.evaluate("//aw-wizard-step[3]/div/div/div[15]/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Input Text    ${inputJudulDokumenKegiatan}    judul dokumen kegiatan test
    Input Text    ${inputDeskripsiDokumenKegiatan}    deskripsidokumen kegiatan test
    Input Text    ${inputTanggalDokumenKegiatan}    2022-08-29
    Input Text    ${inputTempatDokumenKegiatan}    Bekasi
    Click Element    ${dropdownJenisDokumentasi}
    Click Element    ${divItemJenisDokumentasi}
    Click Element    ${btnsimpan}
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    (//button[text()=' Lanjut '])[1]

Click Lanjut Form Data Event dan Peserta
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+7000)
    Sleep    2s
    Wait Until Element Is Visible    (//button[text()=' Lanjut '])[1]    timeout=10s
    Click Element    (//button[text()=' Lanjut '])[1]

Fill Laporan Keuangan
    Sleep    3s
    Input Text    ${inputSumberAnggaran}    test sumber Anggaran
    Input Text    ${inputNomorMAK}    MAK001
    Input Text    ${inputNilaiKontrak}    10000000
    Input Text    ${inputJumlahRealisasi}    20000000
#    Input Text    ${inputJumlahPaguAnggaran}    10000000
#    Input Text    ${inputJumlahRealisasiAnggaran}    20000000
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload Rincian Realisasi Anggaran']/parent::*/parent::button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    Click Element    ${btnsimpan}
    Sleep    2s
    Click Element    (//button[text()=' Lanjut '])[1]

Click Lanjut Laporan Keuangan
    Sleep    3s
    Click Element    (//button[text()=' Lanjut '])[1]

FIll Kata Pengantar
    Input Text    ${inputTotalDurasi}    100
    Execute Javascript
    ...    document.evaluate("//*[@id='layout-wrapper']/div/div/app-add-report-event-lsp/div/div/div[3]/div/div[1]/div/div[8]/div/div/button", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Input Text    ${inputJumlahPeserta}    10
    Click Element    ${dropdownAsalPeserta}
    Click Element    ${divItemAsalPeserta}
    Click Element    (//label[text()='Simpan'])[2]
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${btnsimpan1}
    Sleep    5s
    Wait Until Element Is Visible    ${spanLaporanKegiatan}    timeout=30s

Click Lanjut Kata Pengantar
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Click Element    ${btnsimpan1}
    Sleep    5s

View Detail Laporan Event
    Sleep    2s
    Wait Until Element Is Visible    ${divLaporanEvent}    timeout=10s
    Click Element    ${divLaporanEvent}

View Detail Laporan Kegiatan
    Sleep    2s
    Wait Until Element Is Visible    ${divLaporanKegiatan}    timeout=10s
    Click Element    ${divLaporanKegiatan}
    Sleep    3s

Kirim Revisi
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+30000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnRevisi}    timeout=10s
    Click Element    ${btnRevisi}
    Wait Until Element Is Visible    ${textCatatanRevisi}    timeout=10s
    Input Text    ${textCatatanRevisi}    input revisi automation
    Wait Until Element Is Visible    ${btnKirimRevisi}
    Click Element    ${btnKirimRevisi}
    Sleep    5s

Kirim Revisi Laporan Kegiatan
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnRevisiLaporanKegiatan}    timeout=10s
    Click Element    ${btnRevisiLaporanKegiatan}
    Wait Until Element Is Visible    ${textCatatanRevisi}    timeout=10s
    Input Text    ${textCatatanRevisi}    input revisi automation
    Wait Until Element Is Visible    ${btnKirimRevisi}
    Click Element    ${btnKirimRevisi}
    Sleep    5s

Enter Edit Laporan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+25000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnEditLaporanEvent}    timeout=10s
    Click Element    ${btnEditLaporanEvent}
    Sleep    3s

Enter Edit Laporan Kegiatan
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+25000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnEditLaporanKegiatan}    timeout=10s
    Click Element    ${btnEditLaporanKegiatan}
    Sleep    3s

Setuju Laporan Event
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+30000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnSetujuLaporanEvent}    timeout=10s
    Click Element    ${btnSetujuLaporanEvent}

Setuju Laporan Kegiatan
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+30000)
    Sleep    5s
    Wait Until Element Is Visible    ${btnSetujuLaporanKegiatan}    timeout=10s
    Click Element    ${btnSetujuLaporanKegiatan}

Fill Catatan Setuju
    Sleep    2s
    Input Text    ${textCatatanSetuju}    Laksanakan

Edit Laporan Event
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Click Element    (//button[text()='Lanjut'])[1]
    Sleep    2s
    Click Element    (//button[text()='Lanjut'])[2]
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Click Element    //button[text()=' Lanjut ']
    Sleep    2s
    Click Element    //button[text()=' Lanjut ']
    Sleep    2s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnsimpan1}    timeout=10s
    Click Element    ${btnsimpan1}
    Sleep    5s
    Wait Until Element Is Visible    ${spanStatusLaporanEvent}    timeout=30s
    ${statusLaporan}    Get Text    ${spanStatusLaporanEvent}
    Should Be Equal As Strings    ${statusLaporan}    Revisi Laporan Event

Edit Laporan Kegiatan
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    2s
    Click Element    (//button[text()='Lanjut'])[1]
    Sleep    2s
    Click Element    (//button[text()='Lanjut'])[1]
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    2s
    Wait Until Element Is Visible    ${btnsimpan}    timeout=10s
    Click Element    ${btnsimpan}
    Sleep    5s

Enter Buat Laporan Kegiatan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Sleep    2s
    Wait Until ELement Is Visible    ${btnBuatLaporanKegiatan}    timeout=10s
    Click Element    ${btnBuatLaporanKegiatan}

Tambah Lokasi Form Data Kegiatan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    3s
    Click Element    //button[text()=' Tambah Lokasi ']
    Click Element    //button[.='Pilih Provinsi']
    Wait Until Element Is Visible    //label[text()='Aceh']    timeout=30s
    Click Element    //label[text()='Aceh']
    Sleep    3s
    Click Element    //label[text()='Aceh']
    Click Element    (//label[text()='Simpan'])[1]

Click Lanjut Form Data Kegiatan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    3s
    Wait Until Element Is Visible    ${btnLanjut}    timeout=10s
    Click Element    ${btnLanjut}

Click Lanjut Form Data Event
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+20000)
    Sleep    3s
    Click Element    ${btnLanjut}

Click Lanjut Form Monev
    Wait Until Element Is Visible    ${btnsimpan}    timeout=10s
    Click Element    ${btnsimpan}
    Sleep    5s

Fill Ringkasan Pelaksanaan Kegiatan
    Sleep    3s
    Wait Until Element Is Visible    ${inputRingkasanPelaksanaanKegiatan}    timeout=10s
    Input Text    ${inputRingkasanPelaksanaanKegiatan}    automation ringkasan pelaksanaab kegiatan
    Wait Until Element Is Visible    (//ckeditor)[2]/div[2]/div[2]/div    timeout=15s
    Input Text    (//ckeditor)[2]/div[2]/div[2]/div    automation kesimpulan dan saran
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload File BAST']/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
     Click Element    (//label[text()='Simpan'])[2]
#     Click Element    ${btnsimpan}
#    Click Element    css= button.btn.btn-primary
    Sleep    2s
    Click Element    ${btnLanjut}
    Sleep    2s
    Wait Until Element Is VIsible    ${btnsimpan1}    timeout=10s
    Click Element    ${btnsimpan1}
    # ganti jadi klik lanjut karena di form kegiatan (sprint 10, 553) masih ada form 1 lagi buat monev)
    # Wait Until Element Is Visible    ${btnLanjut}    timeout=10s
    # Click Element    ${btnLanjut}
    # Sleep    5s

Fill Ringkasan Pelaksanaan Kegiatan1
    Sleep    3s
    Wait Until Element Is Visible    ${inputRingkasanPelaksanaanKegiatan}    timeout=10s
    Input Text    ${inputRingkasanPelaksanaanKegiatan}    automation ringkasan pelaksanaab kegiatan
    Wait Until Element Is Visible    (//ckeditor)[2]/div[2]/div[2]/div    timeout=15s
    Input Text    (//ckeditor)[2]/div[2]/div[2]/div    automation kesimpulan dan saran
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload File BAST']/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
#    Click Element    (//label[text()='Simpan'])[2]
#     Click Element    ${btnsimpan}
    Click Element    css= button.btn.btn-primary
    Sleep    2s
    Click Element    ${btnLanjut}
    Sleep    2s
    Wait Until Element Is VIsible    ${btnsimpan1}    timeout=10s
    Click Element    ${btnsimpan1}
    # ganti jadi klik lanjut karena di form kegiatan (sprint 10, 553) masih ada form 1 lagi buat monev)
    # Wait Until Element Is Visible    ${btnLanjut}    timeout=10s
    # Click Element    ${btnLanjut}
    # Sleep    5s

Fill Ringkasan Pelaksanaan Kegiatan Kontrak
    Sleep    3s
    Wait Until Element Is Visible    ${inputRingkasanPelaksanaanKegiatan}    timeout=10s
    Input Text    ${inputRingkasanPelaksanaanKegiatan}    automation ringkasan pelaksanaab kegiatan
    Wait Until Element Is Visible    (//ckeditor)[2]/div[2]/div[2]/div    timeout=15s
    Input Text    (//ckeditor)[2]/div[2]/div[2]/div    automation kesimpulan dan saran
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Execute Javascript
    ...    document.evaluate("//label[text()='Upload File BAST']/parent::*/parent::*", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Choose File    ${fileUploadDropZone}    ${CURDIR}/Pdf/load.pdf
    # Click Element    (//label[text()='Simpan'])[2]
#     Click Element    ${btnsimpan}
    Sleep    3s
    Click Element    (//label[text()='Simpan'])[2]
    Sleep    2s
    Wait Until Element Is VIsible    ${btnsimpan}    timeout=10s
    Click Element    ${btnsimpan}
    Sleep    3s

Edit Ringkasan Pelaksanaan Kegiatan
    Sleep    3s
    Wait Until Element Is Visible    ${inputRingkasanPelaksanaanKegiatan}    timeout=10s
    Input Text    ${inputRingkasanPelaksanaanKegiatan}    EDIT ringkasan pelaksanaab kegiatan
    Wait Until Element Is Visible    ${inputKesimpulanDanSaran}    timeout=10s
    Input Text    ${inputKesimpulanDanSaran}    EDIT kesimpulan dan saran
    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Wait Until Element Is VIsible    ${btnsimpan}    timeout=10s
    Click Element    ${btnsimpan}
    Sleep    5s

Edit Ringkasan Pelaksanaan Kegiatan Kontrak
    Sleep    3s
    Wait Until Element Is Visible    ${inputRingkasanPelaksanaanKegiatan}    timeout=10s
    Input Text    ${inputRingkasanPelaksanaanKegiatan}    EDIT ringkasan pelaksanaab kegiatan
    Sleep   3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
#
#    Wait Until Element Is Visible    ${inputKesimpulanDanSaran}    timeout=10s
#    Input Text    ${inputKesimpulanDanSaran}    EDIT kesimpulan dan saran
#    Execute Javascript    window.scrollTo(0, window.scrollY+10000)
    Sleep    3s
    Click Element    ${btnsimpan}
#    Wait Until Element Is VIsible    ${btnsimpan1}    timeout=10s
#    ...  document.evaluate("${btnSimpan1}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null). snapshotItem(0).click();
    Sleep    5s
