*** Variables ***
${ANDROID_SERVER_URL} =             http://localhost:${ANDROID_PORT}/wd/hub
${ANDROID_AUTOMATION_NAME} =        Uiautomator2
${ANDROID_PORT} =                   4723
${ANDROID_PLATFORM_NAME} =          Android
${ANDROID_PLATFORM_VERSION} =       13
${ANDROID_APP_PACKAGE} =            fr.dsquad.occazio
${ANDROID_APP_ACTIVITY} =           fr.dsquad.occazio.view.home.HomeActivity
${ANDROID_DEVICE_NAME} =            emulator-5554
${ANDROID_APP_NAME} =               /Users/fndiaye/PycharmProjects/Occazio/Common/Occazio.apk

*** Keywords ***
Open Occazio App
    Open Application                http://localhost:4723/wd/hub
    ...                             automationName=UiAutomator2
    ...                             deviceName=emulator-5554
    ...                             platformName=Android
    ...                             app=/Users/fndiaye/PycharmProjects/Occaizio/Common/Occazio.apk
