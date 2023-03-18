# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_20_222846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entrainements", force: :cascade do |t|
    t.string "jour"
    t.time "heure_debut"
    t.time "heure_fin"
    t.string "niveau"
    t.string "gymnase"
    t.bigint "utilisateur_id", null: false
    t.bigint "saison_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["saison_id"], name: "index_entrainements_on_saison_id"
    t.index ["utilisateur_id"], name: "index_entrainements_on_utilisateur_id"
  end

  create_table "facturations", force: :cascade do |t|
    t.integer "tarif"
    t.integer "cb_montant_paye"
    t.integer "cb_commission"
    t.integer "cb_montant_wallet"
    t.integer "cb_montant_transfere"
    t.integer "cb_montant_compense"
    t.boolean "attente_paiement"
    t.boolean "paye"
    t.date "date_paiement"
    t.string "option"
    t.string "reductions"
    t.string "justificatifs_fournis"
    t.date "date_valeur"
    t.integer "montant_ttc"
    t.integer "montant_recu"
    t.boolean "facture_payee"
    t.string "etat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "montant_restant"
  end

  create_table "inscriptions", force: :cascade do |t|
    t.boolean "adherent_valide"
    t.boolean "reglement_interieur"
    t.boolean "interclub"
    t.boolean "aide_fonctionnement"
    t.boolean "aide_tournois"
    t.boolean "formation_arbitre"
    t.boolean "encadrement"
    t.boolean "activite_professionnelle"
    t.string "categorie"
    t.boolean "certificat_medical"
    t.date "date_certificat_medical"
    t.bigint "utilisateur_id", null: false
    t.integer "entrainement_id"
    t.bigint "saison_id", null: false
    t.bigint "facturation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entrainement_id"], name: "index_inscriptions_on_entrainement_id"
    t.index ["facturation_id"], name: "index_inscriptions_on_facturation_id"
    t.index ["saison_id"], name: "index_inscriptions_on_saison_id"
    t.index ["utilisateur_id"], name: "index_inscriptions_on_utilisateur_id"
  end

  create_table "saisons", force: :cascade do |t|
    t.string "periode", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nom_usage"
    t.string "nom_naissance"
    t.string "prenom"
    t.date "date_naissance"
    t.string "annee_naissance"
    t.string "pays_naissance"
    t.string "nationalite"
    t.string "num_licence"
    t.string "role", default: "joueur"
    t.boolean "actif", default: false
    t.string "departement"
    t.string "adresse_contact"
    t.string "code_postal"
    t.string "ville"
    t.string "pays"
    t.string "tel_contact"
    t.string "nom_tuteur"
    t.string "prenom_tuteur"
    t.string "fonction_tuteur"
    t.string "tel_tuteur"
    t.string "email_tuteur"
    t.string "nom_deuxieme_tuteur"
    t.string "prenom_deuxieme_tuteur"
    t.string "fonction_deuxieme_tuteur"
    t.string "tel_deuxieme_tuteur"
    t.string "email_deuxieme_tuteur"
    t.string "sexe"
    t.index ["email"], name: "index_utilisateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_utilisateurs_on_reset_password_token", unique: true
  end

  add_foreign_key "entrainements", "saisons"
  add_foreign_key "entrainements", "utilisateurs"
  add_foreign_key "inscriptions", "entrainements"
  add_foreign_key "inscriptions", "facturations"
  add_foreign_key "inscriptions", "saisons"
  add_foreign_key "inscriptions", "utilisateurs"
end
