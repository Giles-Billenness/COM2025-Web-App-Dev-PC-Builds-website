class GraphicsProcessingUnit < ApplicationRecord
  validates :AfterMarketMake, presence: true
  validates :ChipMake, presence: true
  validates :ChipModel, presence: true
end
