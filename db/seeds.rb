# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating users"
User.create(email: "test02@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test03@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test04@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test05@gmail.com", password: 123456, password_confirmation: 123456)
User.create(email: "test06@gmail.com", password: 123456, password_confirmation: 123456)
puts "Finished"

puts "Creating offers..."
Offer.create(brand: "Dell", model: "Inspiron 15", disc_space: "512GB SSD", video_card: "Intel Iris Xe", ram: 16, screen_size: 15.6, usage: 2, rate: 200, availability: 1, user_id: 1)

Offer.create(brand: "HP", model: "Pavilion 14", disc_space: "256GB SSD", video_card: "NVIDIA GeForce MX350", ram: 8, screen_size: 14.0, usage: 1, rate:150, availability: 1, user_id: 1)

Offer.create(brand: "Asus", model: "ZenBook UX425", disc_space: "512GB SSD", video_card: "Intel UHD Graphics", ram: 16, screen_size: 14.0, usage: 3, rate: 180, availability: 1, user_id: 1)

Offer.create(brand: "Lenovo", model: "ThinkPad X1 Carbon Gen 9", disc_space: "1TB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 14.0, usage: 220, rate: 4, availability: 1, user_id: 1)

Offer.create(brand: "Apple", model: "MacBook Pro 16", disc_space: "1TB SSD", video_card: "AMD Radeon Pro 5500M", ram: 16, screen_size: 16.0, usage: 1, rate: 500, availability: 1, user_id: 1)

Offer.create(brand: "Acer", model: "Swift 5", disc_space: "512GB SSD", video_card: "Intel Iris Plus Graphics", ram: 16, screen_size: 14.0, usage: 3, rate: 300, availability: 1, user_id: 1)

Offer.create(brand: "Microsoft", model: "Surface Laptop 4", disc_space: "512GB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 13.5, usage: 120, rate: 400, availability: 1, user_id: 1)

Offer.create(brand: "Razer", model: "Blade 15", disc_space: "512GB SSD", video_card: "NVIDIA GeForce RTX 3060", ram: 16, screen_size: 15.6, usage: 1, rate: 135, availability: 1, user_id: 1)

Offer.create(brand: "MSI", model: "GS66 Stealth", disc_space: "1TB SSD", video_card: "NVIDIA GeForce RTX 3080", ram: 32, screen_size: 15.6, usage: 2, rate: 140, availability: 1, user_id: 1)

Offer.create(brand: "Samsung", model: "Galaxy Book Pro", disc_space: "1TB SSD", video_card: "Intel Iris Xe Graphics", ram: 16, screen_size: 15.6, usage: 300, rate: 350, availability: 1, user_id: 1)
puts "Finished!"
