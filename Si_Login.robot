*** Settings ***
Library                 Selenium2Library

*** Variables ***
${Browser}              gc
${SiteUrl}              https://si-akang.divusi.com/
${Username}             depa.panjie
${Password}             depa147!

*** Test Cases ***
LoginTest
    Open browser to login page
    Click close
    # Enter username
    # Enter password
    # Close browser

*** Keywords ***
Open browser to login page
    Open Browser        ${SiteUrl}         ${Browser}
    # Maximize Browser Window

Click close
    Click Element                    sizzle=.btn.btn-white

# Enter username
#     Input Text          name=username      ${username}

# Enter password
#     Input Text          name=password      ${password}

# Close browser
    # Close Browser