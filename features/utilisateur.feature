Feature: Accès aux données des utilisateurs

    Un administrateur peut accéder aux données des utilisateurs et gérer ces données.

  Background: Connexion de l utilisateur administrateur
      Given un utilisateur administrateur est connecté
      And la base comprend une liste d utilisateur

  Scenario: Sur la page d'accueil l'administrateur accède à la liste des utilisateurs
      When Je suis sur la page d accueil
      Then Je vois la liste des utilisateurs
