*** Settings ***
Library           Selenium2Library

*** Variables ***
${Browser}                  Firefox
${Site}                     http://my.zeepos.com/index.php/auth/login
${Username}                 depa.article@gmail.com
${Password}                 zeeposku

*** Test Cases ***
Zeepos Login
    Open site
    Login
    Verify logged account

*** Keywords ***
Open site
    Open Browser            ${Site}         ${Browser}

Login
    Wait Until Page Contains        Sign into your ZeePoS account                       timeout=10.0
    Input Text                      name=username           ${Username}
    Input Text                      name=password           ${Password}
    Click Button                    id=btn-submit

Verify logged account
    Wait Until Page Contains        Dashboard                       timeout=10.0
    Close Browser