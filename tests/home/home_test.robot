*** Settings ***
Resource    ../../resources/keywords/pages/HomePage.robot
Resource    ../../resources/variables/env_android.robot

Suite Setup         Application Has Opened    ${PLATFORM_NAME}    ${DEVICE_NAME}    ${PLATFORM_VERSION}    ${APP_PACKAGE}    ${APP_ACTIVITY}    ${REMOTE_URL}
Suite Teardown      Close Application

*** Test Cases ***
Verify Home Dashboard
    Verify Dashboard Visible

Verify Can Sorting Item In Homapage
    Verify Dashboard Visible
    Click Button Sort
    Choose Sort By      AscName
