class CreateSaisons < ActiveRecord::Migration[6.1]
  def change
    create_table :saisons do |t|

      t.string :periode, null: false

      t.timestamps
    end
  end
end
