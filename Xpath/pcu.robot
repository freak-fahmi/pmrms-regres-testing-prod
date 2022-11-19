*** Variables ***
${btnTambahConceptNote}                         //label[text()='Tambah Concept Note']/parent::button
${dropdownPilihConceptNote}                     //label[text()='Pilih']/parent::*/parent::button
${labelConceptNoteItemFirst}                    (//div[@class='overflow2']/label)[1]
${btnBuatConceptNote}                           //button[text()='Buat Concept Note']
${inputNamaEvent}                               //label[text()='Nama Event']/following-sibling::div/textarea
# //div[@class='overflow2']/label[text()='1.1.1.autobadrus4 - Automation Testing olrbwumzxd']
${btnLanjut}                                    (//button[text()='Lanjut'])[1]
${inputLokasi}                                  //label[text()='Lokasi :']/following-sibling::div/input
${btnPilihTempatPelaksanaan}                    //label[text()='Pilih Tempat Pelaksanaan']/following-sibling::div/div/button
${buttonTempatPelaksanaan}                      //button[.='Pilih Tempat Pelaksanaan']
${btnPilihProvinsi}                             //label[text()='Pilih Provinsi']
${labelProvinsiFirst}                           //ngb-modal-window/following-sibling::div/div/div/div/div[2]/div[1]/label
${btnSimpanProvinsi}                            (//label[text()='Simpan'])[2]
${dropdownUnitKerja}                            //label[text()='Unit Kerja']/following-sibling::div/select
${dropdownProvinsi}                             //label[text()='Provinsi']/following-sibling::div/ng-select
${labelProvinsiPeserta}                         //span[text()='Bali']/parent::div
${btnSimpanPeserta}                             (//label[text()='Simpan'])[2]
${divTambahStafPeserta}                         //div[text()=' Tambah Staf ']
${labelNamaPeserta}                             /html/body/div[2]/div/div/div/div[2]/div/label
${inputLatarBelakangEvent}                      (//ckeditor)[1]/div[2]/div[2]/div
${inputDeskripsiEvent}                          (//ckeditor)[2]/div[2]/div[2]/div
${inputTujuanEvent}                             (//ckeditor)[3]/div[2]/div[2]/div
${inputOutputEvent}                             (//ckeditor)[4]/div[2]/div[2]/div
${inputOutputEvent1}                            css= div#layout-wrapper>div>div>app-add-concept-note>div>div>div:nth-of-type(2)>div>div>aw-wizard>div>aw-wizard-step:nth-of-type(3)>div>div>div:nth-of-type(4)>div>ckeditor>div:nth-of-type(2)>div:nth-of-type(2)>div
${inputJumlahPeserta}                           //label[text()='Jumlah Peserta']/following-sibling::div/input
${btnPilihNarahubung}                           //label[text()='Pilih Narahubung']/parent::div/parent::button
${fileUploadDropZone}                           css= .files-input
${tanggalMulaiKegiatan}                         //input[@placeholder='Pilih tanggal mulai']
${tanggalAkhirKegiatan}                         //input[@placeholder='Pilih tanggal akhir']
${inputCari}                                    //input[contains(@class,'form-control ng-untouched')]
${btnCari}                                      //button[text()='Cari']
${laporanEvent}                                 //span[text()='Laporan Event']
${btnBuatLaporanEvent}                          //button[text()='Buat Laporan Event']
${btnBuatLaporanKemajuanEvent}                  //button[text()='Buat Laporan Kemajuan Event']
${inputTemaEvent}                               //input[@placeholder='Tema Event']
${inputKodeEvent}                               //input[@placeholder='Kode Event']
${inputJumlahPesertaEvent}                      //label[text()='Jumlah Peserta Event']/following-sibling::div/input
${inputRingkasanPelaksanaanEventNew}            (//ckeditor)[2]/div[2]/div[2]/div
${inputRingkasanPelaksanaanEvent}               (//ckeditor)[3]/div[2]/div[2]/div
${inputEvaluasiEvent}                           (//ckeditor)[4]/div[2]/div[2]/div
${inputKesimpulanDanSaranEvent}                 (//ckeditor)[5]/div[2]/div[2]/div
${inputJudulDokumenKegiatan}                    //ngb-modal-window/div/div/div[2]/div[2]/div/input
${inputDeskripsiDokumenKegiatan}                //ngb-modal-window/div/div/div[2]/div[4]/div/input
${inputTanggalDokumenKegiatan}                  //ngb-modal-window/div/div/div[2]/div[5]/div/div/input
${inputTempatDokumenKegiatan}                   //ngb-modal-window/div/div/div[2]/div[6]/div/input
${divItemJenisDokumentasi}                      //ng-dropdown-panel/div/div[2]/div[1]
${inputSumberAnggaran}                          //textarea[contains(@placeholder,'Isi Sumber Anggaran')]
${inputNomorMAK}                                //input[contains(@placeholder,'Masukkkan Nomor MAK')]
${inputJumlahPaguAnggaran}                      //label[text()='Jumlah Pagu Anggaran : ']/following-sibling::div/input
${inputJumlahRealisasiAnggaran}                 //label[text()='Jumlah Realisasi Anggaran : ']/following-sibling::div/input
${inputTotalDurasi}                             //input[contains(@placeholder,'Masukkan Total Durasi')]
${dropdownAsalPeserta}                          //ng-select
${divItemAsalPeserta}                           //ng-dropdown-panel/div/div/div[3]
${btnsimpan}                                    //label[text()='Simpan']
${lblbtnSimpan}                                 //label[text()='Simpan']
${inputRingkasanPelaksanaanKemajuanEvent}       (//ckeditor)[2]/div[2]/div[2]/div
