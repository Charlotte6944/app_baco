class CreateInscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :inscriptions do |t|

      t.boolean :adherent_valide
      t.boolean :reglement_interieur
      t.boolean :interclub
      t.boolean :aide_fonctionnement
      t.boolean :aide_tournois
      t.boolean :formation_arbitre
      t.boolean :encadrement
      t.boolean :activite_professionnelle
      t.string :categorie
      t.boolean :certificat_medical
      t.date :date_certificat_medical

      t.references :utilisateur, null: false, foreign_key: true
      t.references :entrainement, null: false, foreign_key: true
      t.references :saison, null: false, foreign_key: true
      t.references :facturation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
