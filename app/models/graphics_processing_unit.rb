class GraphicsProcessingUnit < ApplicationRecord
  validates :aftermarketmake, presence: true
  validates :chipmake, presence: true
  validates :chipmodel, presence: true
  has_many :Build



  #used to format the select dropdown menu
  def formatted_select_text_gpu
    "#{aftermarketmake}  #{chipmake}  #{chipmodel}"
  end
end
