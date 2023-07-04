*** Settings ***
Library                     AppiumLibrary


*** Variables ***
${HEADING_FIRST_PAGE} =                 id=fr.dsquad.occazio:id/tv_take_road
${BUTTON_FIRST_PAGE} =                  id=fr.dsquad.occazio:id/bt_start_showcase
${HEADINGS_ONBOARDING_PAGE} =            id=fr.dsquad.occazio:id/tv_showcase_page_number
@{SWIPE_COORDINATE} =                   90	50	10	50	1000
${NOTIFICATION_BUTTON} =                id=fr.dsquad.occazio:id/v_seekbar_overlay
${ONBOARDING_VALIDATE_BUTTON} =         id=fr.dsquad.occazio:id/bt_stop_showcase


*** Keywords ***
Verify if we are on the first onboarding
    Wait Until Page Contains Element        ${HEADING_FIRST_PAGE}     timeout=10s

Click on the button "DÉMARRER"
    Click Element                           ${BUTTON_FIRST_PAGE}

Verify if the view "Simplicité" is showing
    Wait Until Page Contains Element        ${HEADINGS_ONBOARDING_PAGE}

Swipe to the last view
    FOR     ${i}    IN RANGE     4
        Swipe By Percent                    @{SWIPE_COORDINATE}
    END

Verify if the view "Respect" is showing
    Wait Until Page Contains Element        ${HEADINGS_ONBOARDING_PAGE}

Accept notifications
    Click Element                           ${NOTIFICATION_BUTTON}

Tap on the validate button
    Click Element                           ${ONBOARDING_VALIDATE_BUTTON}