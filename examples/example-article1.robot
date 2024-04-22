*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Go to Puppy Bank
    Open Browser    http://localhost:8000
    Close Browser
