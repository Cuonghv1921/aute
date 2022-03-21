*** Settings ***
Library            SeleniumLibrary
Resource           ../Resources/Login_signup_keyword.robot
Test Setup        Open browser to sign up
Test Teardown     Close my browser

*** Test Case ***
SignUp successfully
    [Tags]    Smoke
    Input firstName            Cuong
    Input lastName             Ha
    Input phoneNumber          0987654321
    Input email                abc5@gmail.com
    Input password_signup      test123
    Select accType             Supplier
    Click signUp
    Validation Login msg
    Sleep    5    

Email already exist
    [Tags]    Validation
    Input firstName            Cuong
    Input lastName             Ha
    Input phoneNumber          0987654321
    Input email                abc5@gmail.com
    Input password_signup      test123
    Select accType             Supplier
    Click signUp
    Page Should Contain    Email already exist


