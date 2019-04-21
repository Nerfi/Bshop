#Seed not working

puts 'cleanign DB'
Shop.destroy

puts 'creating shops'
Shop.create!(name: 'bbshop', description: 'very goof bbbshoppp', price: '10' )
Shop.create!(name: 'Shirt bear', description: 'very good bbshops i like it', price: '10' )
Shop.create!(name: 'Jean-Michel - Le Wagon', description: 'very good bbshops i like it', price: '10' )
Shop.create!(name: 'Silk-mini - Silk', description: 'very good bbshops i like it', price: '20')

puts 'Finished'
