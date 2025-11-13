*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Application Has Opened
    [Arguments]    ${platform}    ${device}    ${version}    ${app_package_or_bundle}    ${app_activity}=${None}    ${remote_url}=${None}
    Open Application    ${remote_url}    
    ...     platformName=${platform}
    ...     deviceName=${device}    
    ...     platformVersion=${version}
    ...     appPackage=${app_package_or_bundle}    
    ...     appActivity=${app_activity}
    ...     automationName=UiAutomator2

Click Element By Id
    [Arguments]    ${element_id}
    Click Element    id=${element_id}

Input Text By Id
    [Arguments]    ${element_id}    ${text}
    Input Text    id=${element_id}    ${text}

Verify Element Exists
    [Arguments]    ${element_id}
    Element Should Be Visible    id=${element_id}
