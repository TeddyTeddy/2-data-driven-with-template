*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  3s

Verify Login Page Error Message
    [Arguments]     ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}

User should see correct error message at login
    [Arguments]     ${USER}
    Navigate to Sign In Page
    Attempt Login  ${USER}
    Verify Login Page Error Message  ${USER.ExpectedErrorMessage}
