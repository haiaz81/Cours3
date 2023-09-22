*** Settings ***
Resource    ../Ressources/Ressources01.robot





*** Test Cases ***
Tc001 login test
    Se connecter a l'application orange demo
    Saisir le nom d'utilisateur
    Saisir le mot de passe
    Cliquer sur le bouton login
    Valider l'affichage de la page d'accueil
    Fermer l'application
    



