*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Go to CloudBank
    Open Browser    http://localhost:8000/bank/login
    Sleep    3s    # to give you time to see the screen. will remove later
    Close Browser
