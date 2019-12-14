class CentralProcessingUnit < ApplicationRecord
  validates :ChipMake, presence: true
  validates :ChipModel, presence: true
  #validates :ChipModel, uniqueness: true
  has_many :Build
  ChipMake=:chipmake
  ChipModel=:chipmodel

 #used to format the select dropdown menu
  def formatted_select_text
    "#{ChipMake}.#{ChipModel}"
  end


end
