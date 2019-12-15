class AddAddtionalComponentsToBuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :motherboard , :text
    add_column :builds, :cpu_cooler , :text
    add_column :builds, :case , :text
    add_column :builds, :power_supply , :text
    add_column :builds, :storage , :text
  end
end
