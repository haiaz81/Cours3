*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Variables scalaire: Variable qui peut contenir une seule valeur à la fois (portée globale)
${Premiere valeur}    100
${Deuxieme valeur}    200
${Troisieme valeur}    200.5
${Nom}    Haithem 
${Browser}    chrome
${Url}    https://www.google.com

#Variables de type liste
@{Ville}    Montreal    Laval
@{Ville}    1    2    3    4

#Variables de type liste: on stock les données sous forme de paire clé/valeur
&{URL-ENV}    qa=https://www.google.qa.ca    dev=https://www.google.dev.ca 

*** Test Cases ***
TC01 mon premier test
    Log    ${Premiere valeur}
    Log    ${Deuxieme valeur}
    Log    ${Nom}
    Log    ${Troisieme valeur}
    Log    ${Browser}
    Log    ${Url}
    Log    ${Ville}[0]
    Log    ${Ville}[1]
    Log    ${URL-ENV}[qa]
    Log    ${URL-ENV}[dev]

TC02 Deuxieme test
    ${Troisieme valeur}    Log    Test
    Log    ${Nom}
    

