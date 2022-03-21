*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${siteUrl}    https://phptravels.com/demo
${browser}    chrome

*** Keywords ***
# Keyword to Login Test
Open browser to login
    open browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    Click Element    xpath=//*[@id="Main"]/section[1]/div/div/div[2]/div/div/div[2]/div/div/div[1]/div/a
    Switch window    new

Input user name
    [Arguments]    ${userName}
    Input Text    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[1]/div/input    ${userName}

Input password
    [Arguments]    ${pwd}
    Input Text    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[2]/div[1]/input    ${pwd}

Click signIn
    Click Button    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[3]/button

Validation Login msg
    Page Should Contain    Wrong credentials. try again!    loglevel= Validation

# Keyword to signup test
Open browser to sign up
    open browser    ${siteUrl}    ${browser}
    Maximize Browser Window
    Click Element    xpath=//*[@id="Main"]/section[1]/div/div/div[2]/div/div/div[2]/div/div/div[1]/div/a
    Switch window    new
    Click Element    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[3]/div/div/a

Input firstName
    [Arguments]    ${firstName}
    Input Text    name:first_name    ${firstName}

Input lastName
    [Arguments]    ${lastName}
    Input Text    name:last_name    ${lastName}

Input phoneNumber
    [Arguments]    ${phoneNumber}
    Input Text    name:phone    ${phoneNumber}

Input email
    [Arguments]    ${email}
    Input Text    name:email    ${email}

Input password_signup
    [Arguments]    ${password}
    Input Text    name:password    ${password}

Select accType
    [Arguments]    ${accType}
    Select From List By Label    id=account_type    ${accType}

Click signUp
    Click Button    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[7]/button

Validation signUp msg
    Page Should Contain    Signup successfull please login.
# Common Keyword
Log in
    Open browser to login
    Input user name    user@phptravels.com
    Input password     demouser
    Click Button    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[3]/button
    Sleep   3

Close my browser
    Close All Browsers    
  
