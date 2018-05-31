*** Settings ***

Library  Selenium2Library

*** Variables ***

${browser}  Firefox
${yahoo_main_page}  https://www.yahoo.com/
${rodo}  xpath://input[@class="btn btn-primary agree"]
${sign_in}  id:uh-signin
${sign_up}  id:createacc
${first_name}  id:usernamereg-firstName
${last_name}  id:usernamereg-lastName
${email_address}  id:usernamereg-yid
${password}  id:usernamereg-password
${PL}  xpath://select[@name="shortCountryCode"]
${phone}  id:usernamereg-phone
${birth_month}  id:usernamereg-month
${birth_day}  id:usernamereg-day
${birth_year}  id:usernamereg-year
${gender}  id:usernamereg-freeformGender
${continue}  id:reg-submit-button
${error_message}  You can only use letters, numbers, periods

*** Test Cases ***

Invalid Username Test
    Open browser  ${yahoo_main_page}  ${browser}
    Click Button  ${rodo}  #temporary page about RODO - remove when not necessary
    Click Element  ${sign_in}
    Click Element  ${sign_up}
    Input First Name  Joanna
    Input Last Name    Pasek
    Input Email Address  Joanna$$$
    Input Password  ${password}  QWErty123%
    Select Country Code  PL
    Input Phone Number  789789789
    Select Birth Month  July
    Input Birth Day  15
    Input Birth Year  1987
    Input Gender  Female
    Click Button  ${continue}
    Page Should Contain  ${error_message}
    [Teardown]  Close Browser


*** Keywords ***

Input First Name
    [Arguments]  ${my_first_name}
    Input Text  ${first_name}  ${my_first_name}

Input Last Name
    [Arguments]  ${my_last_name}
    Input Text  ${last_name}  ${my_last_name}  

Input Email Address
    [Arguments]  ${my_email_address}
    Input Text  ${email_address}  ${my_email_address}

Select Country Code
    [Arguments]  ${my_country_code}
    Select From List By Value  ${PL}  ${my_country_code}

Input Phone Number
    [Arguments]  ${my_phone}
    Input Text  ${phone}  ${my_phone}

Select Birth Month
    [Arguments]  ${july}
    Select From List  ${birth_month}  ${july}

Input Birth Day
    [Arguments]  ${my_birth_day}
    Input Text  ${birth_day}  ${my_birth_day}
    
Input Birth Year
    [Arguments]  ${my_birth_year}
    Input Text  ${birth_year}  ${my_birth_year}
    
Input Gender
    [Arguments]  ${my_gender}
    Input Text  ${gender}  ${my_gender}