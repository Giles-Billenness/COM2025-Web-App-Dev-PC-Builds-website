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
  pc1=GraphicsProcessingUnit.create([AfterMarketMake:'Msi', ChipMake:'Nvidia', ChipModel:'1080ti'])
  pc1.save #fix this one!!!!!!!!!!!!!!!!!!!!!!!
  assert pc1.valid?
end
end
