*** Settings ***
Resource            ../../resources/common/loginpage/keywords_loginpage.robot

Suite Setup         Open Browser    http://localhost:8000    headlessfirefox
Suite Teardown      Run Keywords    Click Button    ${LOGIN}    AND    Close Browser


*** Test Cases ***
Test Case 1
    Input values in Puppy Bank login page    usernameValue=wrong    passwordValue=wrong

Test Case 2
    Input values in Puppy Bank login page    usernameValue=guess    passwordValue=guess

Test Case 3
    Input values in Puppy Bank login page    usernameValue=admin    passwordValue=password
