class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.integer :code
      t.string :company
      t.integer :stock_price

      t.timestamps null: false
    end
  end
end
