class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :block, null: false, foreign_key: true
      t.string :transaction_hash
      t.integer :number_of_confirmations
      t.string :timestamp
      t.string :value
      t.string :transaction_fee

      t.timestamps
    end
  end
end
