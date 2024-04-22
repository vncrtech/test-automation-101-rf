*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${USERNAME}     css=#exampleInputUsername
${PASSWORD}     css=#exampleInputPassword
${LOGIN}        css=[value="Log in"]


*** Test Cases ***
Go to Puppy Bank
    Open Browser    http://localhost:8000
    Input Text    ${USERNAME}    text=admin
    Input Password    ${PASSWORD}    password=password
    Click Button    ${LOGIN}
    Close Browser
