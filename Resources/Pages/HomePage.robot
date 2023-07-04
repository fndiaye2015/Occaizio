*** Settings ***
Library                     AppiumLibrary

*** Variables ***
${ICON_HOMEPAGE} =                              id=fr.dsquad.occazio:id/home
${ICON_MESSAGERIE} =                            id=fr.dsquad.occazio:id/mailbox
${ICON_ACCOUNT} =                               id=fr.dsquad.occazio:id/toolbar_home_profil
${HEADING_ACCOUNT} =                            id=fr.dsquad.occazio:id/tv_account_title
${PERSONAL_INFO_ACCOUNT_BUTTON} =               id=fr.dsquad.occazio:id/tv_personnal_data
${HEADING_INFO_ACCOUNT} =                       id=fr.dsquad.occazio:id/tv_your_info_title



*** Keywords ***
Verify if we are on the Home View
    Wait Until Page Contains Element            ${ICON_HOMEPAGE}

Tap on "Accueil" Icon
    Click element                               ${ICON_HOMEPAGE}

Tap on "Messagerie" Icon
    Click element                               ${ICON_MESSAGERIE}

Navigate to your account details
    Click element                               ${ICON_ACCOUNT}
    Wait Until Page Contains Element            ${HEADING_ACCOUNT}

View personal information
    [Arguments]                                 ${username}
    Click Element                               ${PERSONAL_INFO_ACCOUNT_BUTTON}
    Wait Until Page Contains Element            ${HEADING_INFO_ACCOUNT}
    Page Should Contain Text                    ${username}