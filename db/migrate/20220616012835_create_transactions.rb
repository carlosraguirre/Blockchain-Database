class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :transaction_hash
      t.integer :number_of_confirmations
      t.string :timestamp
      t.decimal :value
      t.decimal :transaction_fee

      t.timestamps
    end
  end
end
