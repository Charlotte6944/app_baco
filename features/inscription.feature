Feature: Inscription
  Tout le monde peut s inscrire en tant que joueur ou entraineur

  Scenario: Creation d un compte joueur avec toutes les informations demandees a l inscription
    Given Je suis sur la page d inscription
    When Je remplis le formulaire d inscription avec toutes les informations demandees
    Then Je suis redirige vers ma page joueur
    And Je vois le message "Votre compte a bien ete cree"
