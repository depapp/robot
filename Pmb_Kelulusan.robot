*** Settings ***
Library           Selenium2Library

*** Variables ***
${Browser}              gc
${Alamat}               https://pmb.unpar.ac.id/
${NoPMB}                0111110004
${TglLahir}             27/09/2000

*** Test Cases ***
Cek kelulusan
    Buka broswer dan alamat website
    Klik tombol pengumuman


*** Keywords ***
Buka broswer dan alamat website
    Open Browser        ${Alamat}           ${Browser}
    Maximize Browser Window

Klik tombol pengumuman
    Page Should Contain                             PENGUMUMAN                                      timeout=20.0
    Set Selenium Timeout                            20
    Wait Until Page Contains Element                xpath=//*[@id='features']/div[2]/div/p[4]/a
    Click Link                                      xpath=//*[@id='features']/div[2]/div/p[4]/a
    Close Browser