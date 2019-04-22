#Seed not working



url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
shop = Shop.new(name: 'NES', description: "A great console", price: 10)
shop.remote_photo_url = url
shop.save
