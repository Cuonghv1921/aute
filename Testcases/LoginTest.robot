*** Settings ***
Library            SeleniumLibrary
Resource           ../Resources/Login_signup_keyword.robot
Test Setup         Open browser to login
Test Teardown      Close my browser

*** Test Case ***
Login successfully
    [Tags]    Smoke    Regression
    Input user name    user@phptravels.com
    Input password     demouser
    Click signIn
 
Login fail wrong user name
    [Tags]    Validation
    Input user name    jkgfaf@sdf.com
    Input password     demouser
    Click signIn
    Validation Login msg   

Login fail wrong password
    [Tags]    Validation
    Input user name    user@phptravels.com
    Input password     abc
    Click signIn
    Validation Login msg

Login fail wrong username wrong password
    [Tags]    Validation
    Input user name    jkgfaf@sdf.com
    Input password     abc
    Click signIn
    Validation Login msg    

Log out successfull
    Open browser to login
    [Tags]    Smoke
    Input user name    user@phptravels.com
    Input password     demouser
    Click signIn
    Sleep    5    
    Click link    xpath=//body/div[1]/div[1]/div[3]/ul[1]/li[5]/a[1]   
