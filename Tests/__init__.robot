*** Settings ***
Documentation                       Before suite file
Library                             AppiumLibrary
Resource                            ../Common/Setup.robot
Resource                            ../Resources/Config.robot

Suite Setup                         Run Keywords    Start Appium Server For Android On Port ${ANDROID_PORT}

Test Setup                          Open Application       http://localhost:4723/wd/hub
    ...                             automationName=UiAutomator2
    ...                             deviceName=emulator-5554
    ...                             platformName=Android
    ...                             app=/Users/fndiaye/PycharmProjects/Occaizio/Common/Occazio.apk

Test Teardown                       Close Application

Suite Teardown                      Stop Appium Server For Android ${ANDROID_PORT}


*** Keywords ***
Start Appium Server For Android On Port ${ANDROID_PORT}
    [Documentation]                 Start Appium Server on Android Port
    Start Appium Server             ${ANDROID_PORT}

Stop Appium Server For Android ${ANDROID_PORT}
    [Documentation]                 Stop Appium Instance
    Stop Appium Server              ${ANDROID_PORT}

