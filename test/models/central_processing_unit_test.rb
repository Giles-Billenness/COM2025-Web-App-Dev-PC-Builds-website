require 'test_helper'

class CentralProcessingUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save empty cpu" do
  pc=CentralProcessingUnit.new
  pc.save
  refute pc.valid?
end

  test "should save cpu" do
  pc1=CentralProcessingUnit.new
  pc1.chipmake = 'AMD'
  pc1.chipmodel='3900X'
  pc1.save
  assert pc1.valid?
end

test "should not save wrong input cpu" do
pc1=CentralProcessingUnit.new
#pc1.chipmake = 'AMD'
pc1.chipmodel='3900X'
pc1.save
refute pc1.valid?
end


end
