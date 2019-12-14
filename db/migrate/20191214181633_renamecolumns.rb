class Renamecolumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :central_processing_units, :ChipMake, :chipmake
    rename_column :central_processing_units, :ChipModel, :chipmodel

    rename_column :graphics_processing_units, :AfterMarketMake, :aftermarketmake
    
    rename_column :central_processing_units, :ChipMake, :chipmake
    rename_column :graphics_processing_units, :ChipModel, :chipmodel
  end
end
