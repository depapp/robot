*** Settings ***
Library                 Selenium2Library

*** Variables ***
${Browser}                          gc
${Site}                             http://10.210.1.182/pmb-fe/
${Username}                         adm_firman.hakim@divusi.com
${Password}                         admisi2017

*** Test Cases ***
Login-Logout
    Open browser and visit site
    Complete form login
    Login
    Schedule check
    Logout

*** Keywords ***
Open browser and visit site
    Open Browser                    ${Site}                 ${Browser}
    Maximize Browser Window

Complete form login
    Input Text                      name=username           ${Username}
    Input Text                      name=password           ${Password}

Login
    Click Element                   id=btn_login

Schedule check
    Wait Until Page Contains        Jadwal                  timeout=10.0
    Click Element                   xpath=//*[@id='side-menu']/li[3]/a

Logout
    Wait Until Page Contains        firman.hakim@divusi.com            timeout=10.0
    Click Element                   xpath=//*[@id='page-wrapper']/div[1]/nav/ul/li[3]/a
    Close Browser