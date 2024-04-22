*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Go to Puppy Bank
    Open Browser    http://localhost:8000
    Sleep    3s    # to give you time to see the screen. will remove later
    Close Browser
