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
    Click Element           	xpath=//*[@id='myModal']/div/div/div[1]/button

Enter username
    Input Text          		name=username      ${username}

Enter password
    Input Text          		name=password      ${password}

Click login
	Click Element				xpath=html/body/div[2]/div[1]/div[2]/div/form/button

Verify logged
	Page Should Contain			fullname
	Close Browser