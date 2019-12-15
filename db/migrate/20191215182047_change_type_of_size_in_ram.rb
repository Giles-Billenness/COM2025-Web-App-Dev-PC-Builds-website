class ChangeTypeOfSizeInRam < ActiveRecord::Migration[5.2]
  def change
    change_column :random_access_memory, :size, :text
  end
end
