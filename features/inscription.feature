Feature: Toute personne peut s inscrire au club

  Une personne peut s inscrire au club en remplissant le formulaire d inscription disponible sur le site du club

  Scenario: Inscription d'un joueur
    Given je suis sur la page "/inscription"
    And je ne me suis jamais inscrit au club avec mon nom "nom"
    When je remplis le formulaire d inscription avec les valeurs suivantes:
      | nom   | prenom   | date_naissance   | num_tel   | email   | num_licence   | sexe   |
      | <nom> | <prenom> | <date_naissance> | <num_tel> | <email> | <num_licence> | <sexe> |
    Then l inscription est effective

  Examples:
    | prenom | nom    | date_naissance | num_tel    | email                | num_licence | sexe |
    | Jean   | Dupont | 01/01/1990     | 0123456789 | jean@inscription.com | 07359004    | H    |
