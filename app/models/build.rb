class Build < ApplicationRecord
  has_one :CentralProcessingUnit
  has_one :GraphicsProcessingUnit
  has_one :RandomAccessMemory
  has_one :User
  has_one_attached :picture

  validates :title, presence: true
  validates :cpu_id, presence: true
  validates :gpu_id, presence: true
  validates :description, presence: true
  validates :ram_id, presence: true
  validates :motherboard, presence: true
  validates :cpu_cooler, presence: true
  validates :case, presence: true
  validates :power_supply, presence: true
  validates :storage, presence: true
  validates :user_id, presence: true

# scope :get_name -> (cpu_id) {
#   where("cpu_id = ?", cpu_id).ChipModel
# }

end
