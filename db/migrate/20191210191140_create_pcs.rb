class CreatePcs < ActiveRecord::Migration[5.2]
  def change
    create_table :pcs do |t|
      t.text :Motherboard
      t.text :CpuCooler
      t.text :Case
      t.text :PowerSupply
      t.text :Storage
      t.decimal :Price
      t.text :Description
      t.datetime :Date

      t.timestamps
    end
  end
end
