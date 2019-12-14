class CentralProcessingUnit < ApplicationRecord
  validates :chipmake, presence: true
  validates :chipmodel, presence: true
  #validates :ChipModel, uniqueness: true
  has_many :Build
  # ChipMake=:chipmake
  # ChipModel=:chipmodel

 #used to format the select dropdown menu
  def formatted_select_text
    "#{chipmake}  #{chipmodel}"
  end


end
