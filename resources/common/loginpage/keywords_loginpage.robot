*** Settings ***
Library     SeleniumLibrary
Resource    objectmaps_loginpage.robot


*** Keywords ***
Input values in CloudBank login page
    [Arguments]    ${usernameValue}    ${passwordValue}
    Input Text    ${USERNAME}    text=${usernameValue}
    Input Password    ${PASSWORD}    password=${passwordValue}
