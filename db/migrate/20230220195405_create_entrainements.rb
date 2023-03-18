class CreateEntrainements < ActiveRecord::Migration[6.1]
  def change
    create_table :entrainements do |t|

      t.string :jour
      t.time :heure_debut
      t.time :heure_fin
      t.string :niveau
      t.string :gymnase

      t.references :utilisateur, null: false, foreign_key: true
      t.references :saison, null: false, foreign_key: true

      t.timestamps
    end
  end
end
