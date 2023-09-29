*** Settings ***
Resource    ../Ressources/Ressources01.robot
Documentation    Cette suite de test est créée par Haithem
Suite Setup    Log    J'execute une seule fois avant le test
Suite Teardown    Log    J'execute une seule fois aprés le test
Test Setup    Se connecter a l'application orange demo
Test Teardown    Fermer l'application





*** Test Cases ***
Tc001 login test
    When Saisir le nom d'utilisateur
    And Saisir le mot de passe
    And Cliquer sur le bouton login
    Then Valider l'affichage de la page d'accueil
    



