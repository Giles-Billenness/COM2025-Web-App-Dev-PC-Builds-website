class CreateCpus < ActiveRecord::Migration[5.2]
  def change
    create_table :cpus do |t|
      t.text :ChipMake
      t.text :ChipModel

      t.timestamps
    end
  end
end
