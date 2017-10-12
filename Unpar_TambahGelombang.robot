*** Settings ***
Library                 Selenium2Library

*** Variables ***
${Browser}              Firefox
${SiteUrl}              http://10.210.1.184/pmb-be/
${Username}             ivannugraha
${Password}             ivan123

*** Test Cases ***
LoginTest
    Open browser to login page
    Enter username
    Enter password
    Click login
    Select role
    Click pilih
    Tambah gelombang

*** Keywords ***
Open browser to login page
    Open Browser        ${SiteUrl}         ${Browser}
    # Maximize Browser Window

Enter username
    Input Text          name=username      ${username}

Enter password
    Input Text          name=password      ${password}

Click login
    Click Element                   class=btn.btn-primary.block.full-width.m-b
    Wait Until Page Contains        Silahkan pilih role yang bersesuaian.

Select role
    # Select From List By Value       name=role       peserta-usm#01/USM/03/2016
    Select From List By Label           name=role           Administrator ( )

Click pilih
    Click Element                   class=btn.btn-primary.block.full-width.m-b
    Wait Until Page Contains        Ivan Nugraha

Tambah gelombang
    Click Element                   id=addButton
    Input Text          id=v_tahun          2017
    Input Text          id=v_gelombang      03
    Input Text          id=t_tgl_mulai_pendaftaran          01-09-2017 14:18
