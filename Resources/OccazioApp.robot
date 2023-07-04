*** Settings ***
Documentation       Ce fichier interagit avec nos different page objects
Library             AppiumLibrary
Resource            Pages/HomePage.robot
Resource            Pages/OnboardingViews.robot
Resource            Pages/PopUp.robot
Resource            Pages/MessagerieView.robot


*** Keywords ***
Go to the first view and navigate throught the onboarding
    OnboardingViews.Verify if we are on the first onboarding
    OnboardingViews.Click on the button "DÉMARRER"
    OnboardingViews.Verify if the view "Simplicité" is showing
    OnboardingViews.Swipe to the last view
    OnboardingViews.Verify if the view "Respect" is showing
    OnboardingViews.Accept notifications
    OnboardingViews.Tap on the validate button

Check if the 4 options are visible on the PopUp
    PopUp.Check if the option "Checher un véhicule" is visible
    PopUp.Check if the option "Vendre un véhicule" is visible
    PopUp.Check if the option "Remplacer mon véhicule" is visible
    PopUp.Check if the option "Découvrir" is visible
    PopUp.Click on the first option "Checher un vehicule"

Go to the HomePage
    HomePage.Tap on "Accueil" Icon

Go to "Messagerie" and create a username
    HomePage.Verify if we are on the Home View
    HomePage.Tap on "Messagerie" icon
    MessagerieView.Verify if we are on the Messagerie View
    MessagerieView.Tap on Need Help section
    MessagerieView.Enter your username
    MessagerieView.Click on the validation button
    MessagerieView.Navigate to the precedent page

Check if the username is displayed
    HomePage.Navigate to your account details
    HomePage.View personal information                  ${MESSAGERIE_TEXT_USERNAME}



