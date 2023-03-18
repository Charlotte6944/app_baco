# frozen_string_literal: true

class DeviseCreateUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :utilisateurs do |t|
      ## Database authenticatable
      t.string :email_contact,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false

      ## Custom
      t.string :nom_usage
      t.string :nom_naissance
      t.string :prenom
      t.date :date_naissance
      t.string :annee_naissance
      t.string :pays_naissance
      t.string :nationalite
      t.string :num_licence, unique: true
      t.string :role, default: 'joueur'
      t.boolean :actif, default: false
      t.string :departement
      t.string :adresse_contact
      t.string :code_postal
      t.string :ville
      t.string :pays
      t.string :tel_contact
      t.string :nom_tuteur, null: true
      t.string :prenom_tuteur, null: true
      t.string :fonction_tuteur, null: true
      t.string :tel_tuteur, null: true
      t.string :email_tuteur, null: true
      t.string :nom_deuxieme_tuteur, null: true
      t.string :prenom_deuxieme_tuteur, null: true
      t.string :fonction_deuxieme_tuteur, null: true
      t.string :tel_deuxieme_tuteur, null: true
      t.string :email_deuxieme_tuteur, null: true

    end

    add_index :utilisateurs, :email_contact,                unique: true
    add_index :utilisateurs, :reset_password_token, unique: true
    # add_index :utilisateurs, :confirmation_token,   unique: true
    # add_index :utilisateurs, :unlock_token,         unique: true
  end
end
