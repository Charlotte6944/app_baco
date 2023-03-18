class CreateFacturations < ActiveRecord::Migration[6.1]
  def change
    create_table :facturations do |t|

      t.integer :tarif
      t.integer :cb_montant_paye
      t.integer :cb_commission
      t.integer :cb_montant_wallet
      t.integer :cb_montant_transfere
      t.integer :cb_montant_compense
      t.boolean :attente_paiement
      t.boolean :paye
      t.date :date_paiement
      t.string :option
      t.string :reductions
      t.string :justificatifs_fournis
      t.date :date_valeur
      t.integer :montant_ttc
      t.integer :montant_recu
      t.boolean :facture_payee
      t.string :etat

      t.timestamps
    end
  end
end
