#Menambahkan Settings
*** Settings ***
Library                 Selenium2Library

#Menambahkan Variables
*** Variables ***
${Browser}              Firefox
${SiteUrl}              http://10.210.1.184/pmb-be/
${Username}             ivannugraha
${Password}             ivan123

#Contoh Test Cases
*** Test Cases ***
LoginTest
    Open browser to login page
    Enter username
    Enter password
    Click login
    Select role
    Click pilih

#Contoh Keywords
*** Keywords ***
Open browser to login page
    Open Browser        ${SiteUrl}         ${Browser}

#Input Username di tag <input name="username" class="form-control" placeholder="Username" required="" type="username">
Enter username
    Input Text          name=username      ${username}
#Input Password di tag <input name="password" class="form-control" placeholder="Password" required="" type="password">
Enter password
    Input Text          name=password      ${password}

#Klik tombol di tag <button type="submit" class="btn btn-primary block full-width m-b">Login</button>
Click login
    Click Element                       class=btn.btn-primary.block.full-width.m-b
    #Pada halaman itu harus terdapat teks Silahkan pilih role yang bersesuaian.
    Wait Until Page Contains            Silahkan pilih role yang bersesuaian.

#Select nilai dari label di tag
#<select class="form-control" name="role" id="role">
    #<option value="admin# ">Administrator ( )</option>
#</select>
Select role
    Select From List By Label           name=role           Administrator ( )

#Klik tombol di tag <button type="submit" class="btn btn-primary block full-width m-b">Login</button>
Click pilih
    Click Element                       class=btn.btn-primary.block.full-width.m-b
    #Pada halaman itu harus terdapat teks Ivan Nugraha dan memiliki timeout 10 detik
    Wait Until Page Contains            Ivan Nugraha            timeout=10.0
    #Untuk menutup browser
    Close Browser

#KEYWORDS TAMBAHAN
#1. Untuk melakukan klik pada link ('disini' merupakan nama dari link tersebut, bukan alamat/name/id nya)
#Click Element                       link=disini

#2. Untuk Select nilai dari label menggunakan Value/Nilai nya
#Select From List By Value       name=role       peserta-usm#01/USM/03/2016