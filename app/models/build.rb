class Build < ApplicationRecord
  # sets up the relationship between the components and the build
  has_one :CentralProcessingUnit
  has_one :GraphicsProcessingUnit
  has_one :RandomAccessMemory
  has_one :User
  # uses active storage to store an image for the build
  has_one_attached :picture

#makes sure that the perameters have to be inialized (have a value = not null)
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
end
