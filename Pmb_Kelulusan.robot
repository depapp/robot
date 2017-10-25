*** Settings ***
Library           Selenium2Library

*** Variables ***
${Browser}              Firefox
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

Klik tombol pengumuman
    Page Should Contain         PENGUMUMAN          timeout=10.0
    Click Link                  href=https://pmb.unpar.ac.id/pengumuman_kelulusan
    Close Browser