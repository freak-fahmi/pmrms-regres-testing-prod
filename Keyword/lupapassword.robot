*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/lupapassword.robot

*** Variables ***
${emailValid}           ptm15@madrasah.kemenag.go.id
${emailInvalid}         testing@mail
${emailTdkDiketahui}    testing@gmail.com

*** Keywords ***
Click Button Lupa Password
    Wait Until Element Is Visible       ${btnLupaPwd}
    Click Element                       ${btnLupaPwd}
#    Execute JavaScript              document.evaluate("${btnLupaPwd}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();
Verify Page Lupa Password
    Wait Until Element Is Visible       ${verifyPageLupaPwd}
    Page Should Contain Element         ${verifyPageLupaPwd}
Input Email Valid
    Wait Until Element Is Visible       ${inputEmail}
    Input Text                          ${inputEmail}       ${emailValid}
Input Email Tidak Valid
    Wait Until Element Is Visible       ${inputEmail}
    Input Text                          ${inputEmail}       ${emailInvalid}
Input Email Tidak Diketahui
    Wait Until Element Is Visible       ${inputEmail}
    Input Text                          ${inputEmail}       ${emailTdkDiketahui}
Verify Email Tidak Diketahui
    Wait Until Element Is Visible       ${notifPenggunaTdkDiketahui}
    Page Should Contain Element         ${notifPenggunaTdkDiketahui}
Verify Email Invalid
    Wait Until Element Is Visible       ${notifEmailTdkValid}
    Page Should Contain Element         ${notifEmailTdkValid}
Click Button Kirim
    Execute JavaScript              document.evaluate("${btnKirim}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Verify Page Konfirmasi Email
    Wait Until Element Is Visible       ${verifyConfirmEmail}
    Page Should Contain Element         ${verifyConfirmEmail}
Click Back Dari Input Email
    Wait Until Element Is Visible       ${btnBackToLogin}
    Click Element                       ${btnBackToLogin}
Click Back Dari Konfirmasi Email
    Wait Until Element Is Visible       ${btnBackFromConfirm}
    Click Element                       ${btnBackFromConfirm}
#    Execute JavaScript              document.evaluate("${btnBackFromConfirm}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();
Verify Page Login
    Wait Until Element Is Visible       ${verifyPageLogin}      timeout=10s
    Page Should Contain Element         ${verifyPageLogin}
