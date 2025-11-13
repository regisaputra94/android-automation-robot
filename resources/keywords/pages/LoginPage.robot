*** Settings ***
Resource    ../base/BaseKeywords.robot

*** Variables ***
${USERNAME_FIELD}    com.saucelabs.mydemoapp.android:id/nameET
${PASSWORD_FIELD}    com.saucelabs.mydemoapp.android:id/passwordET
${LOGIN_BUTTON}      com.saucelabs.mydemoapp.android:id/loginBtn

${USERNAME_ERROR_TEXT}      com.saucelabs.mydemoapp.android:id/nameErrorTV

${PASSWORD_ERROR_TEXT}      com.saucelabs.mydemoapp.android:id/passwordErrorTV

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text By Id    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text By Id    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Element By Id    ${LOGIN_BUTTON}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login

Login Without Username And Password
    Click Login

Login Without Password
    [Arguments]    ${username}
    Enter Username    ${username}
    Click Login

Verify Username Error Message
    Verify Element Exists   ${USERNAME_ERROR_TEXT}

Verify Password Error Message
    Verify Element Exists   ${PASSWORD_ERROR_TEXT}




