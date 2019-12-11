class CreateCentralProcessingUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :central_processing_units do |t|
      t.text :ChipMake, null: false
      t.text :ChipModel, null: false

      t.timestamps
    end
  end
end
