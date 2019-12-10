require 'test_helper'

class PcTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save empty pc" do
    pc=Pc.new
    pc.save
    refute pc.valid?
  end


test "should save pc" do
  pc1=Pc.create([Name:'Welcome', Motherboard:'MOBO', CpuCooler:'COOLER', Case:'CASE', PowerSupply:'SUPPLY', Storage:'SSD', Price:12.3, Description: 'DESC', Date:DateTime.new(2009,9,1,19)])
  pc1.save #fix this one!!!!!!!!!!!!!!!!!!!!!!!
  assert pc1.valid?
end


end
