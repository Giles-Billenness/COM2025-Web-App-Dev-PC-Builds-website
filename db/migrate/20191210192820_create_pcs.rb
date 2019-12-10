class CreatePcs < ActiveRecord::Migration[5.2]
  def change
    create_table :pcs do |t|
      t.text :Name, null: false
      t.text :Motherboard, null: false
      t.text :CpuCooler, null: false
      t.text :Case, null: false
      t.text :PowerSupply, null: false
      t.text :Storage, null: false
      t.decimal :Price
      t.text :Description
      t.datetime :Date, null: false

      t.timestamps
    end
  end
end
