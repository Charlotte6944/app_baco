class ChangeColonneEntrainement < ActiveRecord::Migration[6.1]
  def change

    change_column :inscriptions, :entrainement_id, :integer, null: true

  end
end
