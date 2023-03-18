class AddMontantRestantToFacturation < ActiveRecord::Migration[6.1]
  def change

    add_column :facturations, :montant_restant, :integer

  end
end
