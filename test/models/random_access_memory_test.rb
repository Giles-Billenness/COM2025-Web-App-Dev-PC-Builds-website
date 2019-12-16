require 'test_helper'

class RandomAccessMemoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save empty ram" do
  pc=RandomAccessMemory.new
  pc.save
  refute pc.valid?
end

  test "should save ram" do
  pc1=RandomAccessMemory.new
  pc1.rammake= 'test'
  pc1.ddr = 'ddr4'
  pc1.mhz = '3000'
  pc1.size = '16gb'
  #([AfterMarketMake:'Msi', ChipMake:'Nvidia', ChipModel:'1080ti'])
  pc1.save #fix this one!!!!!!!!!!!!!!!!!!!!!!!
  assert pc1.valid?
end

test "should not save wrong input ram" do
pc1=RandomAccessMemory.new
pc1.rammake= 'Msi'
pc1.ddr = 'ddr4'
pc1.mhz = '3000'
# pc1.size = ""
pc1.save
refute pc1.valid?
end


end
