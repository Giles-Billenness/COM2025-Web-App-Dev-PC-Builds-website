class GraphicsProcessingUnit < ApplicationRecord
  #makes sure that the perameters have to be inialized
  validates :aftermarketmake, presence: true
  validates :chipmake, presence: true
  validates :chipmodel, presence: true
  #sets up the relationship with build
  has_many :Build

  #used to format the select dropdown menu
  def formatted_select_text_gpu
    "#{aftermarketmake}  #{chipmake}  #{chipmodel}"
  end
end
