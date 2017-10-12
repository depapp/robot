*** Settings ***
Library                 Selenium2Library

*** Variables ***
${Browser}              Firefox
${SiteUrl}              https://si-akang.divusi.com/
${Username}             enter_your_username_here
${Password}             enter_your_password_here

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
    Open Browser        	${SiteUrl}	         ${Browser}

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
	Page Should Contain			write_your_fullname_here
	Close Browser