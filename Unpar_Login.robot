*** Settings ***
Library                 Selenium2Library

*** Variables ***
${Browser}              gc
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

*** Keywords ***
Open browser to login page
    Open Browser        ${SiteUrl}         ${Browser}
    # Maximize Browser Window

Enter username
    Input Text          name=username      ${username}

Enter password
    Input Text          name=password      ${password}

Click login
    Click Element                    sizzle=.btn.btn-primary.block.full-width.m-b
    Wait Until Page Contains        Silahkan pilih role yang bersesuaian.

Select role
    # Select From List By Value       name=role       peserta-usm#01/USM/03/2016
    Select From List By Label           name=role           Administrator ( )

Click pilih
    Click Element                    sizzle=.btn.btn-primary.block.full-width.m-b
    Wait Until Page Contains        Ivan Nugraha