
require 'open-uri'

puts "Creating users"
User.create(email: "test02@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test03@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test04@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test05@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test06@gmail.com", password: 123456, password_confirmation: 123456)
puts "Finished"

puts "Creating offers..."
file_a = URI.open("https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/notebooks/g-series/15-5510/cn-hk-tw/pdp/laptop-gseries-g15-5510-n18-dark-shadow-grey-coral-kb-gallery-504x350.jpg?qlt=95&fit=constrain,1&hei=350&wid=504&fmt=jpg")
offer_a = Offer.new(brand: "Dell", model: "Inspiron 15", disc_space: "512GB SSD", video_card: "Intel Iris Xe", ram: 16, screen_size: 15.6, usage: 2, rate: 200, availability: 1, user_id: 1, address: "Alvaro Obregon 213")
offer_a.photo.attach(io: file_a, filename: "pic_a.jpg", content_type: "image/jpg")

file_b = URI.open("https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08077495.png")
offer_b = Offer.new(brand: "HP", model: "Pavilion 14", disc_space: "256GB SSD", video_card: "NVIDIA GeForce MX350", ram: 8, screen_size: 14.0, usage: 1, rate:150, availability: 1, user_id: 1, address: "Lerdo 360")
offer_b.photo.attach(io: file_b, filename: "pic_b.png", content_type: "image/png")

file_c = URI.open("https://www.officedepot.com.mx/medias/100077742.jpg-1200ftw?context=bWFzdGVyfHJvb3R8NTk1MjcyfGltYWdlL2pwZWd8aDk2L2g5Mi8xMDY1MzA5MjgwNjY4Ni8xMDAwNzc3NDIuanBnXzEyMDBmdHd8MzI2Y2NiMmFhNjRjOTBmZDNmMmVkNTViNjNhMzFkZjVkNzYzMTBmMDU0M2YyMzhiNDU1MWVjZDhiNmYyY2YyZQ")
offer_c = Offer.new(brand: "Asus", model: "ZenBook UX425", disc_space: "512GB SSD", video_card: "Intel UHD Graphics", ram: 16, screen_size: 14.0, usage: 3, rate: 180, availability: 1, user_id: 1, address: "Lima 580")
offer_c.photo.attach(io: file_c, filename: "pic_c.jpg", content_type: "image/jpg")

file_d = URI.open("https://www.costco.com.mx/medias/sys_master/products/h5d/h72/116764275539998.jpg")
offer_d = Offer.new(brand: "Lenovo", model: "ThinkPad X1 Carbon Gen 9", disc_space: "1TB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 14.0, usage: 220, rate: 4, availability: 1, user_id: 1, address: "Wall Street 480")
offer_d.photo.attach(io: file_d, filename: "pic_d.jpg", content_type: "image/jpg")

file_e = URI.open("https://depor.com/resizer/9yj6keQ2QrvKIS6cRPGJNGDkc7g=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/CD5XRBR6Y5BY3J3JBMZDL5IDOE.jpg")
offer_e = Offer.new(brand: "Apple", model: "MacBook Pro 16", disc_space: "1TB SSD", video_card: "AMD Radeon Pro 5500M", ram: 16, screen_size: 16.0, usage: 1, rate: 500, availability: 1, user_id: 1, address: "Insurgentes 225")
offer_e.photo.attach(io: file_e, filename: "pic_e.jpg", content_type: "image/jpg")

file_f = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShKTpvG3uQR9uOqbf4km5CntJrYPI5w5ijv6zNcFl4yfHiBHby5VM7wXOIm2VLRdQiYKk&usqp=CAU")
offer_f = Offer.new(brand: "Acer", model: "Swift 5", disc_space: "512GB SSD", video_card: "Intel Iris Plus Graphics", ram: 16, screen_size: 14.0, usage: 3, rate: 300, availability: 1, user_id: 1, address: "El Bosque 456")
offer_f.photo.attach(io: file_f, filename: "pic_f.jpeg", content_type: "image/jpeg")

# file_g = URI.open("https://images.unsplash.com/photo-1542393545-10f5cde2c810?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
# offer_g = Offer.new(brand: "Microsoft", model: "Surface Laptop 4", disc_space: "512GB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 13.5, usage: 120, rate: 400, availability: 1, user_id: 1, address: "General Varela 306")
# offer_g.photo.attach(io: file_g, filename: "pic_g.avif", content_type: "image/avif")

# file_h = URI.open("https://images.unsplash.com/photo-1584433305355-9cb73387fc61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGxhcHRvcHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
# offer_h = Offer.new(brand: "Razer", model: "Blade 15", disc_space: "512GB SSD", video_card: "NVIDIA GeForce RTX 3060", ram: 16, screen_size: 15.6, usage: 1, rate: 135, availability: 1, user_id: 1, address: "Miroquezada 180")
# offer_h.photo.attach(io: file_h, filename: "pic_h.avif", content_type: "image/avif")

# file_i = URI.open("https://images.unsplash.com/photo-1586077427825-15dca6b44dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGxhcHRvcHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
# offer_i = Offer.new(brand: "MSI", model: "GS66 Stealth", disc_space: "1TB SSD", video_card: "NVIDIA GeForce RTX 3080", ram: 32, screen_size: 15.6, usage: 2, rate: 140, availability: 1, user_id: 1, address: "Francisco Sossa 7")
# offer_i.photo.attach(io: file_i, filename: "pic_i.avif", content_type: "image/avif")

# file_j = URI.open("https://images.unsplash.com/photo-1607603289612-71ae134aa577?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# offer_j = Offer.new(brand: "Samsung", model: "Galaxy Book Pro", disc_space: "1TB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 15.6, usage: 300, rate: 350, availability: 1, user_id: 1, address: "Reforma 1025")
# offer_j.photo.attach(io: file_j, filename: "pic_j.avif", content_type: "image/avif")

offer_a.save
offer_b.save
offer_c.save
offer_d.save
offer_e.save
offer_f.save
# offer_g.save
# offer_h.save
# offer_i.save
# offer_j.save
puts "Finished!"
