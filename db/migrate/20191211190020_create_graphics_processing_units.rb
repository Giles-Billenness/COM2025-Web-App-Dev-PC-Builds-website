class CreateGraphicsProcessingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :graphics_processing_units do |t|
      t.text :AfterMarketMake
      t.text :ChipMake
      t.text :ChipModel

      t.timestamps
    end
  end
end
