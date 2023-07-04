*** Settings ***
Library                     AppiumLibrary

*** Variables ***
${MESSAGERIE_HEADING} =                              id=fr.dsquad.occazio:id/toolbar_conversation_title
${MESSAGERIE_NEED_HELP} =                            id=fr.dsquad.occazio:id/cl_conv_occazio_content
${MESSAGERIE_POPUP_HEADING} =                        id=fr.dsquad.occazio:id/tv_user_name_title
${MESSAGERIE_INPUT_USERNAME} =                       id=fr.dsquad.occazio:id/et_user_name
${MESSAGERIE_TEXT_USERNAME} =                        fndiaye
${MESSAGERIE_BUTTON_VALIDATE} =                      id=fr.dsquad.occazio:id/bt_user_name_valid
${MESSAGERIE_ICON_BACK} =                            id=fr.dsquad.occazio:id/ib_chat_back_occazio


*** Keywords ***
Verify if we are on the Messagerie View
    Wait Until Page Contains Element                ${MESSAGERIE_HEADING}

Tap on Need Help section
    Click Element                                   ${MESSAGERIE_NEED_HELP}
    Wait Until Page Contains Element                ${MESSAGERIE_POPUP_HEADING}

Enter your username
    input text                                      ${MESSAGERIE_INPUT_USERNAME}        ${MESSAGERIE_TEXT_USERNAME}

Click on the validation button
    click Element                                   ${MESSAGERIE_BUTTON_VALIDATE}
    Wait Until Page Contains Element                ${MESSAGERIE_ICON_BACK}

Navigate to the precedent page
    click Element                                   ${MESSAGERIE_ICON_BACK}


