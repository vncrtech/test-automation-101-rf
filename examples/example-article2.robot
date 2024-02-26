*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${USERNAME}     css=#exampleInputUsername
${PASSWORD}     css=#exampleInputPassword
${LOGIN}        css=[value="Log in"]


*** Test Cases ***
Go to CloudBank
    Open Browser    http://localhost:8000/bank/login
    Input Text    ${USERNAME}    text=admin
    Input Password    ${PASSWORD}    password=password
    Close Browser
