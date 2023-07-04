*** Settings ***
Library                     AppiumLibrary


*** Variables ***
${POPUP_FIRST_OPTION} =                     id=fr.dsquad.occazio:id/iv_why_buy
${POPUP_SECOND_OPTION} =                    id=fr.dsquad.occazio:id/iv_why_sell
${POPUP_THIRD_OPTION} =                     id=fr.dsquad.occazio:id/iv_why_buy_sell
${POPUP_FOURTH_OPTION} =                    id=fr.dsquad.occazio:id/iv_why_other



*** Keywords ***
Check if the option "Checher un véhicule" is visible
    Wait until page contains element                    ${POPUP_FIRST_OPTION}

Check if the option "Vendre un véhicule" is visible
    Wait until page contains element                    ${POPUP_SECOND_OPTION}

Check if the option "Remplacer mon véhicule" is visible
    Wait until page contains element                    ${POPUP_THIRD_OPTION}

Check if the option "Découvrir" is visible
    Wait until page contains element                    ${POPUP_FOURTH_OPTION}

Click on the first option "Checher un vehicule"
    Click element                                       ${POPUP_FIRST_OPTION}

