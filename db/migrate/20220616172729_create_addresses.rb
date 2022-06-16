class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :transaction, null: false, foreign_key: true
      t.string :address
      t.string :balance

      t.timestamps
    end
  end
end
