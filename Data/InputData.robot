
*** Variables ***
# Configuration
${BROWSER} =        ff
${ENVIRONMENT} =    prod
&{BASE_URL}         dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =      profile/secure/login

# Input Data
&{UNREGISTERED_USER}        Email=unregistered.user@gmail.com  Password=TestPassword!  ExpectedErrorMessage=Your username and/or password is incorrect. Please try again.
&{INVALID_PASSWORD_USER}    Email=hakan.cuzdan@gmail.com       Password=InvalidPassword     ExpectedErrorMessage=Your username and/or password is incorrect. Please try again.
&{BLANK_CREDENTIALS_USER}   Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.