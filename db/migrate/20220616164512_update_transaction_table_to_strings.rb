class UpdateTransactionTableToStrings < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :value, :string
    change_column :transactions, :transaction_fee, :string
  end
end
