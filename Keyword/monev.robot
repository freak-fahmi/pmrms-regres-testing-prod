*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/monev.robot

*** Variables ***


*** Keywords ***
Click menu monev
    Click Element    ${MenuMonev}
Click Monev Output Target
    Go To    https://pmrms.kemenag.go.id/monev/list-monev/output
    Wait Until Element Is Visible    ${pageMonev}   timeout=30s
    Page Should Contain Element    ${pageMonev}

Click Monev Longterm target
    Go To    https://pmrms.kemenag.go.id/monev/monev-longterm/Longterm
    Wait Until Element Is Visible    ${pageLongTerm}
#    Page Should Contain Element    ${pageLongTerm}
Click View Target
    Wait Until Element Is Visible    ${viewLongTerm}
    Click Element    ${viewLongTerm}
Click Close View
    Wait Until Element Is Visible    ${closeLongTerm}
    Click Element    ${closeLongTerm}
Click Button Edit
    Wait Until Element Is Visible    ${btnEdit}     timeout=30s
    Click Element    ${btnEdit}
Pilih indikator longterm
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

    click element    ${indikatorLongterm}
Pilih indikator midterm
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${indikatormidterm}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();


Pilih indikator intermediate
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${indikatorIntermediate}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();


Click Button Lanjut
    Execute JavaScript              document.evaluate("${lanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

Click Button Simpan
    Wait Until Element Is Visible    ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Monev Midterm Output Target
    Go To    https://pmrms.kemenag.go.id/monev/monev-midterm/Midterm
    Wait Until Element Is Visible    ${pageMonevMidterm}   timeout=30s
    Page Should Contain Element     ${pageMonevMidterm}
Click Monev Intermediate Output Target
    Go To    https://pmrms.kemenag.go.id/monev/monev-intermediate/intermediate
    Wait Until Element Is Visible    ${pageMonevIntermediate}   timeout=30s
    Page Should Contain Element    ${pageMonevIntermediate}
Click Edit Monev output
    go to    https://pmrms.kemenag.go.id/monev/list-monev/output
    sleep    3s
    click element       ${btnEdit}
Click Button Kembali
    wait until element is visible    ${btnKembali}      timeout=30s
    click element    ${btnKembali}
Click Button Tambah Output indikator keberhasilan
    click element    ${btnTambahOutput}
Input Tambah Target Output Kegiatan
    click element    ${pilihKomponen}

User Klik Monev Output Target
    Go To   https://pmrms.kemenag.go.id/monev/list-monev/output
    Wait Until Element Is Visible    //label[text()='Daftar Target Output Kegiatan']     timeout=30s
User Klik Monev Intermediate Outcome Target
    Go To   https://pmrms.kemenag.go.id/monev/monev-intermediate/intermediate
    Wait Until Element Is Visible    //label[text()='Daftar Target Intermediate Outcome']     timeout=30s
User Klik Monev Midterm Outcome Target
    Go To   https://pmrms.kemenag.go.id/monev/monev-midterm/Midterm
    Wait Until Element Is Visible    //label[text()='Daftar Target Midterm Outcome']     timeout=30s

User Klik Monev Longterm Outcome Target
    Go To   https://pmrms.kemenag.go.id/monev/monev-longterm/Longterm
    Wait Until Element Is Visible    //label[text()='Daftar Target Longterm Outcome']     timeout=30s
User Search Monev Outcome Target
     Click Element    //span[text()='2023']
     Wait Until Element Is Visible    //i[@class='fa fa-trash-alt']      timeout=30s
     Input Text         //input[contains(@class,'form-control ng-untouched')]        automation
     Click Element      //button[text()='Cari']
     Sleep    3s
    

User Klik Tambah/Indikator keberhasilan
    Click Element       //button[@class='btn btn-lg']
User Input Output Kegiatan
    ${text}=    Generate Random String    3    [LOWER]
    Wait Until Element Is Visible    //input[@minmode='year']   timeout=30s
    Input Text          //input[@minmode='year']    2023
    Click Element       //label[text()='Komponen :']
    Sleep    5s
    Wait Until Element Is Visible    //label[text()='Pilih Komponen']   timeout=30s
    Click Element       //label[text()='Pilih Komponen']
    Click Element       //label[text()='Komponen 1 - Penerapan Sistem e-RKAM (Rencana Kerja dan Anggaran Madrasah berbasis Elektronik) Secara Nasional dan Pemberian Dana Bantuan untuk Madrasah']
    Click Element       //label[text()='Pilih Sub Komponen']
    Click Element       //label[text()='Sub-Komponen 1.1 - Dukungan terhadap Pengukuran dan Penilaian Capaian Standar Nasional Pendidikan untuk Madrasah']
    Sleep    5s
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    3s
    Execute JavaScript              document.evaluate("${pilihKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep    3s
    Click Element       //label[text()='O.1._']
#    Click Element       //label[@class='dropdown-item']//label
    Input Text          //textarea[@placeholder='Input Result Chain Code']      auto${text}
    Input Text          //textarea[@placeholder='Masukkan Output Kegiatan']     automation
    Sleep    3s
    Click Element       //*[@id="indicatorSuccess"]
#    Click Element       //button[@id='indicatorSuccess']
    Sleep    3s
    Click Element       //*[@id="layout-wrapper"]/div/div/app-create-target-monev/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[1]/div/div/div[6]/div/div/div/div/div/label/label
    Input Text          (//textarea[@placeholder='Input Result Chain Code'])[2]      auto
    Input Text          //textarea[@placeholder='Masukkan Indikator Keberhasilan']      automation keberhasilan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Execute JavaScript              document.evaluate("${checkbox1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox2}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox3}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Input Text                      //*[@id="layout-wrapper"]/div/div/app-create-target-monev/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[1]/div/div/div[11]/div/table/tbody/tr[4]/td[2]/input     2023
    Execute JavaScript              document.evaluate("${checkbox4}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
User Kik Button Lanjut
    Click Element       //button[text()='Lanjut']

User Input Pertanyaan
    Click Element       //button[text()=' Tambah Pertanyaan (Ya/Tidak) ']
    Click Element       (//div[@role='combobox']//input)[3]
    Sleep    3s
    Execute JavaScript              document.evaluate("${pilihPertanyaan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
User Klik Button Simpan
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s

User Hapus Indikator
    Wait Until Element Is Visible    //span[text()='2023']      timeout=30s
    Click Element    //span[text()='2023']
    Wait Until Element Is Visible    //i[@class='fa fa-trash-alt']      timeout=30s
    Click Element    //i[@class='fa fa-trash-alt']
    Click Element    //label[text()='Hapus']
    Sleep    5s

User Input Intermediate Kegiatan
    ${text}=    Generate Random String    3    [LOWER]
    Wait Until Element Is Visible    //input[@minmode='year']   timeout=30s
    Input Text          //input[@minmode='year']    2023
    Click Element       //label[text()='Komponen :']
    Sleep    5s
    Wait Until Element Is Visible    //label[text()='Pilih Komponen']   timeout=30s
    Click Element       //label[text()='Pilih Komponen']
    Click Element       //label[text()='Komponen 1 - Penerapan Sistem e-RKAM (Rencana Kerja dan Anggaran Madrasah berbasis Elektronik) Secara Nasional dan Pemberian Dana Bantuan untuk Madrasah']
    Click Element       //label[text()='Pilih Sub Komponen']
    Click Element       //label[text()='Sub-Komponen 1.1 - Dukungan terhadap Pengukuran dan Penilaian Capaian Standar Nasional Pendidikan untuk Madrasah']
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    3s
    Execute JavaScript              document.evaluate("${pilihKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

#    Click Element       //label[text()='I.1.A - Intermediate Outcome']
#    Click Element       //label[text()='Pilih']
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep   3s
    Execute JavaScript              document.evaluate("${intermeidate}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Click Element    //label[text()='Intermediate Outcome :']
    Input Text          //textarea[@placeholder='Input Result Chain Code']      auto${text}
    Input Text          //textarea[@placeholder='Masukkan Output Kegiatan']      automation keberhasilan
    Sleep    3s
    Click Element    id= indicatorSuccess
    Click Element    //*[@id="layout-wrapper"]/div/div/app-create-target-monev/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[1]/div/div/div[6]/div/div/div/div/div/label
    Input Text          (//textarea[@placeholder='Input Result Chain Code'])[2]      auto${text}
    Input Text          //textarea[@placeholder='Masukkan Indikator Keberhasilan']      automation keberhasilan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Execute JavaScript              document.evaluate("${checkbox1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox2}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox3}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Input Text                      //div[@id='layout-wrapper']/div[1]/div[1]/app-create-target-monev[1]/div[1]/div[1]/div[2]/div[1]/div[1]/aw-wizard[1]/div[1]/aw-wizard-step[1]/div[1]/div[1]/div[11]/div[1]/table[1]/tbody[1]/tr[4]/td[2]/input[1]     2023
    Execute JavaScript              document.evaluate("${checkbox4}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

User Input Midterm Kegiatan
    ${text}=    Generate Random String    3    [LOWER]
    Wait Until Element Is Visible    //input[@minmode='year']   timeout=30s
    Input Text          //input[@minmode='year']    2023
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    2s
    Click Element       //label[text()='Midterm Outcome :']
    Sleep    3s
    Click Element       id= activityName
    Wait Until Element Is Visible    //label[text()='M._']      timeout=30s
    Execute JavaScript              document.evaluate("${pilihMidterm}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Input Text          //textarea[@placeholder='Input Result Chain Code']      auto${text}
    Input Text          //textarea[@placeholder='Masukkan Output Kegiatan']     automation keberhasilan
    Click Element       //label[text()='Indikator Keberhasilan :']
    Click Element       //button[@id='indicatorSuccess']
    Sleep    3s
    Click Element    //*[@id="layout-wrapper"]/div/div/app-create-target-monev/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[1]/div/div/div[4]/div/div/div/div/div/label
#    Execute JavaScript              document.evaluate("${pilihIndikatorMidterm}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();
    Input Text          (//textarea[@placeholder='Input Result Chain Code'])[2]      auto
    Input Text          //textarea[@placeholder='Masukkan Indikator Keberhasilan']      automation keberhasilan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Execute JavaScript              document.evaluate("${checkbox1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox2}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox3}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Input Text                      //div[@id='layout-wrapper']/div[1]/div[1]/app-create-target-monev[1]/div[1]/div[1]/div[2]/div[1]/div[1]/aw-wizard[1]/div[1]/aw-wizard-step[1]/div[1]/div[1]/div[9]/div[1]/table[1]/tbody[1]/tr[4]/td[2]/input[1]     2023
    Execute JavaScript              document.evaluate("${checkbox4}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();


User Input Longterm Kegiatan
    ${text}=    Generate Random String    3    [LOWER]
    Wait Until Element Is Visible    //input[@minmode='year']   timeout=30s
    Input Text          //input[@minmode='year']    2023
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Sleep    2s
    Click Element       //label[text()='Longterm Outcome :']
    Sleep    3s
    Click Element       id= activityName
    Wait Until Element Is Visible    //label[text()='L._']      timeout=30s
    Execute JavaScript              document.evaluate("${pilihLongterm}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Input Text          //textarea[@placeholder='Input Result Chain Code']      auto${text}
    Input Text          //textarea[@placeholder='Masukkan Output Kegiatan']     automation keberhasilan
    Click Element       //label[text()='Indikator Keberhasilan :']
    Click Element       //button[@id='indicatorSuccess']
    Sleep    3s
    Click Element    //*[@id="layout-wrapper"]/div/div/app-create-target-monev/div/div/div[2]/div/div/aw-wizard/div/aw-wizard-step[1]/div/div/div[3]/div/div/div/div/div/label
#    Execute JavaScript              document.evaluate("${pilihIndikatorLongterm}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();
    Input Text          (//textarea[@placeholder='Input Result Chain Code'])[2]      auto
    Input Text          //textarea[@placeholder='Masukkan Indikator Keberhasilan']      automation keberhasilan
    Sleep    3s
    Execute Javascript    window.scrollTo(0, window.scrollY+5000)
    Execute JavaScript              document.evaluate("${checkbox1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox2}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${checkbox3}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Input Text                      //div[@id='layout-wrapper']/div[1]/div[1]/app-create-target-monev[1]/div[1]/div[1]/div[2]/div[1]/div[1]/aw-wizard[1]/div[1]/aw-wizard-step[1]/div[1]/div[1]/div[8]/div[1]/table[1]/tbody[1]/tr[4]/td[2]/input[1]     2023
    Execute JavaScript              document.evaluate("${checkbox4}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();