*** Settings ***
Resource    ../base/BaseKeywords.robot

*** Variables ***
${DASHBOARD_TITLE}    com.saucelabs.mydemoapp.android:id/mTvTitle
${PAGE_TITLE}         com.saucelabs.mydemoapp.android:id/productTV
${SORT_BUTTON}        com.saucelabs.mydemoapp.android:id/sortIV
${MENU_BUTTON}        com.saucelabs.mydemoapp.android:id/menuIV
${LOGIN_TEXTBUTTON}   xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemTV" and @text="Log In"]
${LOGIN_TITLE}        com.saucelabs.mydemoapp.android:id/loginTV

*** Keywords ***
Verify Dashboard Visible
    Wait Until Element Is Visible   ${PAGE_TITLE}
    Verify Element Exists    ${PAGE_TITLE}

Click Button Sort
    Verify Element Exists    ${SORT_BUTTON}   
    Click Element By Id      ${SORT_BUTTON}

Choose Sort By
    [Arguments]             ${sortBy}

Go To Login Page
    Click Button Menu
    Click Login Text Button
    Verify Already in Login Page

Click Button Menu
    Click Element By Id      ${MENU_BUTTON}

Click Login Text Button
    Click Element      ${LOGIN_TEXTBUTTON}

Verify Already in Login Page
    Wait Until Element Is Visible   ${LOGIN_TITLE}
    Verify Element Exists    ${LOGIN_TITLE}   

