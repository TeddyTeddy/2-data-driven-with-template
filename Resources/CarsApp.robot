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