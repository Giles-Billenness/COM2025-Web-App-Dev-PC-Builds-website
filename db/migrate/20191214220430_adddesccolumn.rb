class Adddesccolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :description, :text
  end
end
