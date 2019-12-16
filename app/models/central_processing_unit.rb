class CentralProcessingUnit < ApplicationRecord
  #makes sure that the perameters have to be inialized
  validates :chipmake, presence: true
  validates :chipmodel, presence: true
  # sets up relationship with build
  has_many :Build

 #used to format the select dropdown menu
  def formatted_select_text_cpu
    "#{chipmake}  #{chipmodel}"
  end
end
