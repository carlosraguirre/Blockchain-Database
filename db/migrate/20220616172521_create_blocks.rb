class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.string :timestamp

      t.timestamps
    end
  end
end
