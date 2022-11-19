*** Variables ***
${menuKegiatan}                         //a[@href='/implement/kegiatan']
${verifyKegiatan}                       //label[@class='title-header']
${inputCari}                            //input[contains(@class,'form-control ng-untouched')]
${btnCari}                              //button[text()='Cari']
${verifyNamaKegiatan}                   //td[text()='Kegiatan baru 1']
${lihatDetail}                          //label[text()='Lihat']
${lblLihatDetail}                       //button[@class='btn text-white']
${btnLihatDetailNew}                    //td[.='Baru']/..//td[.='Lihat']//button
${btnLihatDetailRencana}                //td[.='Perencanaan']/..//td[.='Lihat']//button
${btnLihatPersetujuan}                  //td[.='Menunggu Persetujuan']/..//td[.='Lihat']//button
${btnKembali}                           //label[text()='Kembali']
${noData}                               //td[text()='No data!']
${verifyDetail}                         //label[text()='Detail Kegiatan - 1.1.1.H']
${btnImplementasiKegiatan}              //button[text()='Implementasi Kegiatan']
${radioAdaPOK}                          //input[@name='radios']
${tbhKodePOK}                           //button[@id='dropdownMenuButton']
${pilihKodeAkun}                        //label[text()='521111 - Belanja Keperluan Kantor']
${budgetPOK}                            //input[@placeholder='Budget POK']
${btnLanjut}                            //button[text()='Lanjut']
${inputAsumsi}                          //div[@id='layout-wrapper']/div[1]/div[1]/app-add-kegiatan[1]/div[1]/div[1]/div[2]/div[1]/div[1]/aw-wizard[1]/div[1]/aw-wizard-step[4]/div[3]/div[1]/ckeditor[1]/div[2]/div[2]/div[1]
${inputResiko}                          //div[@id='layout-wrapper']/div[1]/div[1]/app-add-kegiatan[1]/div[1]/div[1]/div[2]/div[1]/div[1]/aw-wizard[1]/div[1]/aw-wizard-step[4]/div[4]/div[1]/ckeditor[1]/div[2]/div[2]/div[1]
${angkapotensi}                         //input[@value='male']
${angkadampak}                          //label[text()='Tidak Pernah']/following::input
${btnsimpan}                            //label[text()='Simpan']
${btnsimpan1}                           //label[text()='Simpan']
${sorting}                              //th[text()='Status']
${btnKeluar}                            //div[text()='Keluar']
${profile}                              css= .profile-button
${btnLogout}                            //a[contains(.,'Logout')]
${qualityEntry}                         //button[@class='btn quality-start']
${entry1}                               //input[contains(@class,'form-check-input ng-untouched')]
${entry2}                               (//div[contains(@class,'form-check form-radio-outline')]//input)[3]
${entry3}                               (//label[text()=' Iya '])[3]
${entry4}                               //div[@class='modal-body']//div[4]//label[contains(.,'Iya')]
${entry5}                               //div[@class='modal-body']//div[5]//label[contains(.,'Iya')]
${entry6}                               //div[@class='modal-body']//div[6]//label[contains(.,'Iya')]
${entry7}                               //div[7]//label[contains(.,'Iya')]
${simpanQuality}                        //button[text()=' Simpan ']
${btnSetuju}                            //label[.='Setuju']
${setujuApproval}                       //div[contains(@class,'btn text-white')]
${buttonSetuju}                            //button[contains(@class,'btn text-white')]
${catatan}                              //label[text()='Catatan :']/following::textarea
${catatanSetuju}                        //label[text()='Colored']/following::textarea
${btnKirim}                             //label[.='Kirim']
${btnKirimPMU}                          (//button[@class='btn text-white'])[2]
${buttonKirim}                             //button[@class='btn text-white']
${filterTahun}                          //button[.='Semua Tahun']
${pilihTahun}                           //label[.='AWP Tahun 2022']
${InputKetResiko}                       //div[@role='combobox']//input[1]
${pilihKetResiko}                       //span[text()='Beban kerja terlalu tinggi']
${spanLaporanKegiatan}                  //span[text()='Laporan Kegiatan']
${btnBuatLaporanEvent}                  //button[text()='Buat Laporan Event']
${btnBuatLaporanKegiatan}               //button[text()='Buat Laporan Kegiatan']
${inputNamaEvent}                       //input[@placeholder='Nama Event']
${inputTemaEvent}                       //input[@placeholder='Tema Event']
${inputKodeEvent}                       //input[@placeholder='Kode Event']
${inputLokasi}                          //aw-wizard-step[2]/div/div/div[5]/div/input
${inputTempatPelaksanan}                //aw-wizard-step[2]/div/div/div[3]/div
${labelPilihProvinsi}                   //label[text()='Pilih Provinsi']
${labelProvinsiAceh}                    //label[text()='Aceh']
${inputDeskripsiEvent}                  //aw-wizard-step[3]/div/div/div[2]/div/ckeditor/div/div[2]/div
${inputTujuanEvent}                     //aw-wizard-step[3]/div/div/div[3]/div/ckeditor/div/div[2]/div
${inputJumlahPesertaEvent}              //input[@placeholder='Jumlah Peserta']
${inputRingkasanPelaksanaanEvent}       //aw-wizard-step[3]/div/div/div[10]/div/ckeditor/div/div[2]/div
${inputRingkasanPelaksanaanEvent1}      //*[@id="layout-wrapper"]/div/div/app-add-report-event-lsp/div/div/div[3]/div/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[10]/div/ckeditor/div[2]/div[2]/div
${inputEvaluasiEvent1}                   //*[@id="layout-wrapper"]/div/div/app-add-report-event-lsp/div/div/div[3]/div/div/div/aw-wizard/div/aw-wizard-step[3]/div/div/div[11]/div/ckeditor/div[2]/div[2]/div
${inputEvaluasiEvent}                   //aw-wizard-step[3]/div/div/div[11]/div/ckeditor/div/div[2]/div
${inputKesimpulanDanSaranEvent}         //aw-wizard-step[3]/div/div/div[13]/div/ckeditor/div/div[2]/div
${dropdownFormulirEvaluasiEvent}        //aw-wizard-step[3]/div/div/div[12]/div
${divItemFormulirEvaluasi}              //aw-wizard-step[3]/div/div/div[12]/div/ng-select/ng-dropdown-panel/div[1]/div[2]/div[1]
${btnUploadLampiran}                    (//label[text()='Upload Lampiran'])[2]/parent::*/parent::*
${fileUploadLampiran}                   //file-upload[@name='uploadSelfie']
${fileUploadDropZone}                   css= .files-input
${btnUploadDokumentasiKegiatan}         //aw-wizard-step[3]/div/div/div[14]/div/button
${inputJudulDokumenKegiatan}            //ngb-modal-window/div/div/div[2]/div[2]/div/input
${inputDeskripsiDokumenKegiatan}        //ngb-modal-window/div/div/div[2]/div[4]/div/input
${inputTanggalDokumenKegiatan}          //ngb-modal-window/div/div/div[2]/div[5]/div/div/input
${inputTempatDokumenKegiatan}           //ngb-modal-window/div/div/div[2]/div[6]/div/input
${dropdownJenisDokumentasi}             (//div[contains(@class,'ng-select-container')])[2]
${divItemJenisDokumentasi}              //ng-dropdown-panel/div/div[2]/div[1]
${inputSumberAnggaran}                  //textarea[contains(@placeholder,'Isi Sumber Anggaran')]
${inputNomorMAK}                        //input[contains(@placeholder,'Masukkkan Nomor MAK')]
${inputJumlahPaguAnggaran}              //label[text()='Jumlah Pagu Anggaran : ']/following-sibling::div/input
${inputNilaiKontrak}                    //label[text()='Nilai Kontrak : ']/following-sibling::div/input
${inputJumlahRealisasiAnggaran}         //label[text()='Jumlah Realisasi Anggaran : ']/following-sibling::div/input
${inputJumlahRealisasi}                 //label[text()='Jumlah Realisasi : ']/following-sibling::div/input
${inputTotalDurasi}                     //input[contains(@placeholder,'Masukkan Total Durasi')]
${inputJumlahPeserta}                   //label[text()='Jumlah Peserta :']/following-sibling::*/input
${dropdownAsalPeserta}                  //ng-select
${divItemAsalPeserta}                   //ng-dropdown-panel/div/div/div[3]
${divLaporanEvent}                      //*[@id="ngb-nav-3-panel"]/div/div[1]/div[2]/div/div/div/div/div/button
${btnRevisi}                            //*[@id="layout-wrapper"]/div/div/app-detail-report-event/div/div[2]/div[4]/div[2]/div/div/button[2]
${textCatatanRevisi}                    //ngb-modal-window/div[1]/div/div[2]/textarea
${btnKirimRevisi}                       (//ngb-modal-window/div[1]/div/div[3]/button)[1]
${btnEditLaporanEvent}                  //*[@id="layout-wrapper"]/div/div/app-detail-report-event/div/div[2]/div[4]/div[2]/div/div/button[1]
${spanStatusLaporanEvent}               //*[@id="layout-wrapper"]/div/div/app-detail-report-event/div/div[2]/div[2]/div/div[1]/label[2]/span
${btnSetujuLaporanEvent}                //*[@id="layout-wrapper"]/div/div/app-detail-report-event/div/div[2]/div[4]/div[2]/div/div/button[1]
${textCatatanSetuju}                    //ngb-modal-window/div[1]/div/div[2]/textarea
${inputRingkasanPelaksanaanKegiatan}    (//ckeditor)[1]/div[2]/div[2]/div
${inputKesimpulanDanSaran}              (//ckeditor)[2]/div[2]/div[2]/div
${divLaporanKegiatan}                   //*[@id="ngb-nav-3-panel"]/div/div[1]/div[3]/div/div/div/button
${btnRevisiLaporanKegiatan}             //*[@id="layout-wrapper"]/div/div/app-detail-report-kegiatan/div/div[2]/div[4]/div[2]/div/div[2]/div/button[2]
${btnEditLaporanKegiatan}               //button[text()='Edit Laporan Kegiatan']
${btnSetujuLaporanKegiatan}             //label[text()='Setuju']/parent::button
