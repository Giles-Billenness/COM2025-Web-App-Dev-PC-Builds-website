class GraphicsProcessingUnit < ApplicationRecord
  validates :aftermarketmake, presence: true
  validates :chipmake, presence: true
  validates :chipmodel, presence: true
end
