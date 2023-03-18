class ChangeColonneEmailContactToUtilisateur < ActiveRecord::Migration[6.1]
  def change

    rename_column :utilisateurs, :email_contact, :email

  end
end
