*** Settings ***
Library             SeleniumLibrary

Suite Setup         Open Browser    http://localhost:8000
Suite Teardown      Run Keywords    Click Button    ${LOGIN}    AND    Close Browser


*** Variables ***
${USERNAME}     css=#exampleInputUsername
${PASSWORD}     css=#exampleInputPassword
${LOGIN}        css=[value="Log in"]


*** Test Cases ***
Test Case 1
    Input values in Puppy Bank login page    usernameValue=wrong    passwordValue=wrong

Test Case 2
    Input values in Puppy Bank login page    usernameValue=guess    passwordValue=guess

Test Case 3
    Input values in Puppy Bank login page    usernameValue=admin    passwordValue=password


*** Keywords ***
Input values in Puppy Bank login page
    [Arguments]    ${usernameValue}    ${passwordValue}
    Input Text    ${USERNAME}    text=${usernameValue}
    Input Password    ${PASSWORD}    password=${passwordValue}
