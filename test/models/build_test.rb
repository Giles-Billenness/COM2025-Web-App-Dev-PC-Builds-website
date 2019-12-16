require 'test_helper'

class BuildTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save empty build" do
  pc=Build.new
  pc.save
  refute pc.valid?
end

  test "should save build" do
  pc1=Build.new
  pc1.title= 'test'
  pc1.cpu_id = 1
  pc1.gpu_id = 1
  pc1.description = 'description'
  pc1.ram_id = 1
  pc1.motherboard = "motherboard"
  pc1.cpu_cooler = "cpu_cooler"
  pc1.case = "case"
  pc1.power_supply = "power_supply"
  pc1.storage = "storage"
  pc1.user_id = 1
  pc1.save
  assert pc1.valid?
end

test "should not save wrong input build" do
  pc1=Build.new
  pc1.title= 'test'
  pc1.cpu_id = 1
  pc1.gpu_id = 1
  pc1.description = 'description'
  pc1.ram_id = 1
  pc1.motherboard = "motherboard"
  pc1.cpu_cooler = "cpu_cooler"
  pc1.case = "case"
  pc1.power_supply = "power_supply"
  pc1.storage = "storage"

  pc1.save
  refute pc1.valid?
end

end
