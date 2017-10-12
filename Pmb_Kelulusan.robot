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
    Isi No PMB/PMDK
    Isi Tanggal Lahir
    Klik lihat pengumuman
    Verifikasi hasil

*** Keywords ***
Buka broswer dan alamat website
    Open Browser        ${Browser}          ${Alamat}

Klik tombol pengumuman
    Page Should Contain         PENGUMUMAN
    Click Link                  href=https://pmb.unpar.ac.id/pengumuman_kelulusan

Isi No PMB/PMDK
    Page Should Contain         PENGUMUMAN KELULUSAN UNPAR TAHUN AKADEMIK
    Input Text                  name=nopmb          ${NoPMB}

Isi Tanggal Lahir
    Input Text                  name=tgllahir       ${TglLahir}

Klik lihat pengumuman
    Click Element               sizzle=.btn.btn-primary.block.full-width.m-b

Verifikasi hasil
    Page Should Contain         0111110004
    Close Browser