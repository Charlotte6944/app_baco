Feature: Accès à la plateforme

  Une personne "utilisateur" accède au site si celui-ci est connecté et est admin.

  Background: Utilisateurs en base de données
    Given les utilisateurs suivants existent:
      | email            | password | role    |
      | test@test.com    | admini   | admin   |
      | joueur@joueur.fr | joueur   | joueur  |

  Scenario: Se connecté en tant qu'administrateur
  Given Je suis sur la page de connexion
  When Je remplis le formulaire avec des données valides
  And Je clique sur le bouton "Connexion"
  Then je suis dirigé vers la page d accueil

  Scenario: Se connecté en tant que joueur
  Given Je suis sur la page de connexion
  When Je remplis le formulaire avec des données valides
  And Je clique sur le bouton "Connexion"
  Then je vois un message d erreur "Vous n'avez pas les droits d'administrateur."

  Scenario: Erreur de connexion
  Given Je suis sur la page de connexion
  When Je remplis le formulaire avec des données non valides
  And Je clique sur le bouton "Connexion"
  Then je vois un message d erreur
