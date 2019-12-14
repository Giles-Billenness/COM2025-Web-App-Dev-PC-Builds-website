class AddGpuIdToBuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :gpu_id, :integer
  end
end
