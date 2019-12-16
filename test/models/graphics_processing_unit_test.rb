require 'test_helper'

class GraphicsProcessingUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save empty gpu" do
  pc=CentralProcessingUnit.new
  pc.save
  refute pc.valid?
end

  test "should save gpu" do
  pc1=GraphicsProcessingUnit.new
  pc1.aftermarketmake= 'Msi'
  pc1.chipmake = 'Nvidia'
  pc1.chipmodel = '1080ti'
  #([AfterMarketMake:'Msi', ChipMake:'Nvidia', ChipModel:'1080ti'])
  pc1.save #fix this one!!!!!!!!!!!!!!!!!!!!!!!
  assert pc1.valid?
end

test "should not save wrong input gpu" do
pc1=GraphicsProcessingUnit.new
pc1.aftermarketmake= 'Msi'
pc1.chipmake = 'Nvidia'
pc1.save
refute pc1.valid?
end
end
