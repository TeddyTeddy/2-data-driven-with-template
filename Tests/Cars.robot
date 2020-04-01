*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# python -m robot -d Results Tests/Cars.robot

*** Variables ***

*** Test Cases ***
Invalid Login Scenarios Should Display Correct Error Messages
    [Template]  User should see correct error message at login
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}
