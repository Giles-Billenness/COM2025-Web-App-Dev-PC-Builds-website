class CreateCpus < ActiveRecord::Migration[5.2]
  def change
    create_table :cpus do |t|
      t.belongs_to :Pc, foreign_key: true
      t.text :ChipMake, null: false
      t.text :ChipModel, null: false
      t.text :AfterMarketMake, null: false

      t.timestamps
    end
  end
end
