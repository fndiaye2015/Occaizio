*** Settings ***
Library             AppiumLibrary
Library             Process
Resource            Constants.robot
Resource            ../Resources/Config.robot

*** Keywords ***
Start Appium Server
    [Documentation]             Start Appium Server
    [Arguments]                 ${PORT}
    Kill All Appium Process
    Start Process               /usr/local/bin/appium    -p  ${PORT}    shell=True    alias=appiumserver_${PORT}   stdout=${OUT_DIR}/appium_sdout.txt
    ...                         stderr=${OUT_DIR}/appium_stderr.txt
    Process Should Be Running   appiumserver_${PORT}
    Sleep                       5s


Kill All Appium Process
    [Documentation]             Kill all appium server's instance
    Run Process                 ps    -ef|grep appium|grep -v grep|awk '{print $2}'|xargs kill -9
    Sleep                       5s

Stop Appium Server
    [Documentation]             Stop Appium Server
    [Arguments]                 ${PORT}
    Terminate Process           appiumserver_${PORT}     kill=True

Close and Terminate the App
    Close Application


