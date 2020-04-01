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
Unregistered user should see correct error message at login
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${UNREGISTERED_USER}
    CarsApp.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with invalid password should show correct error message
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${INVALID_PASSWORD_USER}
    CarsApp.Verify Login Page Error Message  ${INVALID_PASSWORD_USER.ExpectedErrorMessage}

Login with blank email and password should show correct error message
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${BLANK_CREDENTIALS_USER}
    CarsApp.Verify Login Page Error Message  ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}