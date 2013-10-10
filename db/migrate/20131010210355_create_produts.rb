class CreateProduts < ActiveRecord::Migration
  def change
    create_table :produts do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
