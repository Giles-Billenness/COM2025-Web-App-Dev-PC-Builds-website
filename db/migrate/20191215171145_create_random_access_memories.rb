class CreateRandomAccessMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :random_access_memories do |t|
      t.text :rammake, null: false
      t.text :ddr, null: false
      t.text :mhz, null: false
      t.integer :size, null: false
      t.timestamps
    end
  end
end
