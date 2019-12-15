class Build < ApplicationRecord
  has_one :CentralProcessingUnit
  has_one :GraphicsProcessingUnit
  has_one :RandomAccessMemory
  has_one_attached :picture
# scope :get_name -> (cpu_id) {
#   where("cpu_id = ?", cpu_id).ChipModel
# }

end
