*** Settings ***
Library                 Selenium2Library

*** Variables ***
# ${Browser}              Firefox
${SiteUrl}              https://si-akang.divusi.com/
${Username}             username
${Password}             password

*** Test Cases ***
LoginTest
    Open browser to login page
    Click close
    Enter username
    Enter password
    Click login
    Verify logged

*** Keywords ***
Open browser to login page
    Open Browser        	${SiteUrl}

Click close
    Page Should Contain			Divusi Point Special Challenge 1
    Click Element           	sizzle=.btn.btn-white

Enter username
    Input Text          		name=username      ${username}

Enter password
    Input Text          		name=password      ${password}

Click login
	Click Element				sizzle=.btn.btn-success.block.full-width.m-b

Verify logged
	Page Should Contain			fullname
	Close Browser