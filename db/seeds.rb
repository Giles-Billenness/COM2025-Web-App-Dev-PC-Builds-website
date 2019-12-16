# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# welcome=CentralProcessingUnit.where(chipmodel:'3900X').first
# welcome.delete if welcome
CentralProcessingUnit.create([chipmake:'AMD', chipmodel:'Ryzen 7 3700X'])
CentralProcessingUnit.create([chipmake:'AMD ', chipmodel:'Ryzen 5 3600'])
CentralProcessingUnit.create([chipmake:'Intel ', chipmodel:'i7-9700K'])
CentralProcessingUnit.create([chipmake:'AMD ', chipmodel:'Ryzen 9 3900X'])
CentralProcessingUnit.create([chipmake:'Intel ', chipmodel:'i9-9900K'])
CentralProcessingUnit.create([chipmake:'Intel ', chipmodel:'i5-9600K'])


GraphicsProcessingUnit.create([aftermarketmake: 'Asus' , chipmake:'Nvidia', chipmodel:'RTX 2080 Ti'])
GraphicsProcessingUnit.create([aftermarketmake: 'Msi' , chipmake:'Nvidia', chipmodel:'GTX 1660 Ti'])
GraphicsProcessingUnit.create([aftermarketmake: 'Nvidia' , chipmake:'Nvidia', chipmodel:'GTX 1080Ti'])
GraphicsProcessingUnit.create([aftermarketmake: 'Msi' , chipmake:'AMD', chipmodel:'Radeon RX 580'])
GraphicsProcessingUnit.create([aftermarketmake: 'Gigabyte' , chipmake:'AMD', chipmodel:'Radeon RX 5700 XT'])
GraphicsProcessingUnit.create([aftermarketmake: 'XFX' , chipmake:'AMD', chipmodel:'Radeon RX 570'])

RandomAccessMemory.create([rammake: 'Corsair' , ddr:'ddr4', mhz:'3000', size: '16gb'])
RandomAccessMemory.create([rammake: 'G.Skill' , ddr:'ddr4', mhz:'3000', size: '8gb'])
RandomAccessMemory.create([rammake: 'Crucial' , ddr:'ddr4', mhz:'3000', size: '8gb'])
RandomAccessMemory.create([rammake: 'Corsair' , ddr:'ddr3', mhz:'1600', size: '8gb'])
RandomAccessMemory.create([rammake: 'G.Skill' , ddr:'ddr3', mhz:'2400', size: '16gb'])
RandomAccessMemory.create([rammake: 'Crucial' , ddr:'ddr3', mhz:'3000', size: '4gb'])
