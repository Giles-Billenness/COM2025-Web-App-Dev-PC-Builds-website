class RandomAccessMemory < ApplicationRecord
  #makes sure that the perameters have to be inialized
  validates :rammake, presence: true
  validates :ddr, presence: true
  validates :mhz, presence: true
  validates :size, presence: true
  # sets up the relationship with the build
  has_many :Build

# enum used so only values in the dropdown can be selected
  enum ddr_types:{
    ddrfour: "ddr4",
    ddrthree: "ddr3"
    }

  enum mhz_types:{
    oneksix: "1600",
    twokfour: "2400",
    threek: "3000",
    theektwo: "3200",
    theeksix: "3600"
    }

    enum size_types:{
      four: "4gb",
      eight: "8gb",
      sixteen: "16gb",
      thertytwo: "32gb",
      sixtyfour: "64gb",
      onetwentyeight: "128gb"
      }
  #used to format the select dropdown menu
  def formatted_select_text_ram
    "#{rammake}  #{ddr}  #{mhz} #{size}"
  end
end
