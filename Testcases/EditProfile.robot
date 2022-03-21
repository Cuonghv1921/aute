*** Settings ***
Library            SeleniumLibrary
Resource           ../Resources/Login_signup_keyword.robot
Suite Setup        Log in
Suite Teardown     Close my browser

*** Test Case ***
Edit the First Name
    Click Link    xpath=//*[@id="fadein"]/div[1]/div/div[3]/ul/li[4]/a
    Input Text    name:firstname    John   
    Sleep    2    
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2  
    Click Button    xpath=//*[@id="fadein"]/section[1]/div/div[2]/div/div[1]/div/div/div[2]/form/div[3]/button
    Sleep    2    
    Textfield Should Contain    name:firstname    John
Edit the Last Name
    Click Link    xpath=//*[@id="fadein"]/div[1]/div/div[3]/ul/li[4]/a
    Input Text    name:lastname    Smith   
    Sleep    2    
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2  
    Click Button    xpath=//*[@id="fadein"]/section[1]/div/div[2]/div/div[1]/div/div/div[2]/form/div[3]/button
    Sleep    2    
    Textfield Should Contain    name:lastname    Smith
Add funds
    Click Link    xpath=//*[@id="fadein"]/div[1]/div/div[3]/ul/li[3]/a
    Select Radio Button    payment_gateway    paypal
    Click Button    xpath=//*[@id="fadein"]/section[1]/div/div[2]/div/div[1]/div/div/div[2]/form/div/div[2]/div/button
    Sleep    5    
    Page Should Contain    Pay With


