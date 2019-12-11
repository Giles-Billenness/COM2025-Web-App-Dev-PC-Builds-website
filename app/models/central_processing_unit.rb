class CentralProcessingUnit < ApplicationRecord
  validates :ChipMake, presence: true
  validates :ChipModel, presence: true
  #validates :ChipModel, uniqueness: true
end
