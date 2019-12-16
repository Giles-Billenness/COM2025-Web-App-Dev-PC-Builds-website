class RandomAccessMemory < ApplicationRecord
  validates :rammake, presence: true
  validates :ddr, presence: true
  validates :mhz, presence: true
  validates :size, presence: true
  has_many :Build

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

    def formatted_select_text_ram
      "#{rammake}  #{ddr}  #{mhz} #{size}"
    end

end
