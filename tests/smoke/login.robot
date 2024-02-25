*** Settings ***
Resource            ../../resources/common/loginpage/keywords_loginpage.robot

Suite Setup         Open Browser    http://localhost:8000/bank/login
Suite Teardown      Run Keywords    Click Button    ${LOGIN}    AND    Close Browser


*** Test Cases ***
Test Case 1
    Input values in CloudBank login page    usernameValue=wrong    passwordValue=wrong

Test Case 2
    Input values in CloudBank login page    usernameValue=guess    passwordValue=guess

Test Case 3
    Input values in CloudBank login page    usernameValue=admin    passwordValue=password
