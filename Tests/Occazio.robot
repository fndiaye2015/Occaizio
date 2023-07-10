*** Settings ***
Documentation       Ce fichier contiendra tous nos cas de test
Resource            ../Resources/OccazioApp.robot

#Run Script with allure report
#robot --listener allure_robotframework:Out/AllureReports/ -d Out/Results/ Tests/


*** Test Cases ***
Open Occazio application and create an account by entering your username
    [Documentation]    Dans ce cas de test, nous creons un username et nous allons tester si ce dernier a bien ete cree
    OccazioApp.Go to the first view and navigate throught the onboarding
    OccazioApp.Check if the 4 options are visible on the PopUp
    OccazioApp.Go to "Messagerie" and create a username
    OccazioApp.Go to the HomePage
    OccazioApp.Check if the username is displayed






