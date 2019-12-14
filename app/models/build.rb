class Build < ApplicationRecord
  has_one :CentralProcessingUnit

# scope :get_name -> (cpu_id) {
#   where("cpu_id = ?", cpu_id).ChipModel
# }

end
