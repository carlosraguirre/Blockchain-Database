class DropTableBlock < ActiveRecord::Migration[6.1]
  def change
    drop_table :blocks
  end
end
