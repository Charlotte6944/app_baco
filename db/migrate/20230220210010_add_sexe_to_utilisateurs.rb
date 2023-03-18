class AddSexeToUtilisateurs < ActiveRecord::Migration[6.1]
  def change
    add_column :utilisateurs, :sexe, :string
  end
end
