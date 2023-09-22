*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    gc

*** Keywords ***
Se connecter a l'application orange demo
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

Saisir le nom d'utilisateur
    Clear Element Text    name:username
    Input Text    name:username    Admin

Saisir le mot de passe
    Clear Element Text    name:password
    Input Password    name:password    admin123

Cliquer sur le bouton login
    Click Button    xpath://Button
    Sleep    2

Valider l'affichage de la page d'accueil
    Element Text Should Be    xpath://h6    Dashboard

Fermer l'application
    Close Browser
    