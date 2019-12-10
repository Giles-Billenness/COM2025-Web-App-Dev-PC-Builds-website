# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name:   'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
welcome=Pc.where(Name:'Welcome').first
welcome.delete if welcome

pcs=Pc.create([Name:'Welcome', Motherboard:'MOBO', CpuCooler:'COOLER', Case:'CASE', PowerSupply:'SUPPLY', Storage:'SSD', Price:12.3, Description: 'To the pcs section', Date:DateTime.new(2009,9,1,19)])
