class CreateGraphicsProcessingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :graphics_processing_units do |t|
      t.text :AfterMarketMake, null: false
      t.text :ChipMake, null: false
      t.text :ChipModel, null: false

      t.timestamps
    end
  end
end
