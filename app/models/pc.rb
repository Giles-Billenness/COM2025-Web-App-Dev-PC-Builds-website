class Pc < ApplicationRecord
  validates :Name, presence: true
  validates :Motherboard, presence: true
  validates :CpuCooler, presence: true
  validates :Case, presence: true
  validates :PowerSupply, presence: true
  validates :Storage, presence: true
  validates :Date, presence: true

end
