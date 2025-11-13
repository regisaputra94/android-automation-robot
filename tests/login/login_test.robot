*** Settings ***
Resource    ../../resources/keywords/pages/LoginPage.robot
Resource    ../../resources/keywords/pages/HomePage.robot
Resource  ../../resources/variables/env_android.robot
Suite Setup         Application Has Opened    ${PLATFORM_NAME}    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${APP_PACKAGE}    ${APP_ACTIVITY}    ${REMOTE_URL}
Suite Teardown    Close Application

*** Test Cases ***
Login Test Valid Credentials
    Go To Login Page
    Login With Credentials    bod@example.com    10203040
    Verify Dashboard Visible

Login Test Invalid Credentials
    Go To Login Page
    Login With Credentials    test@example.com    10203040
    # Verify Error Message
    Sleep    5

Login Without Username
    Go To Login Page
    Login Without Username And Password
    Verify Username Error Message


Login WIthout Password
    Go To Login Page
    Login Without Password      test@example.com
    Verify Password Error Message

#Logout