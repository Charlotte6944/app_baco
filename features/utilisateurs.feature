Feature: Accès aux donées utilisateurs de la plateforme

Un administrateur accède aux données des utilisateurs

Background: Connexion administrateur
  Given utilisateur se connectant
  | email         | password | role  |
  | test@test.com | admini   | admin |

Scenario: Accès aux données utilisateurs
  When je suis sur la page accueil
  Then je vois le tableau de tous les utilisateurs
