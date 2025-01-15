# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bonnie = {name: "Bonnie", address: "75018 Paris", phone_number: "0615141312", category: "french"}
girafe = {name: "Girafe", address: "75016 Paris", phone_number: "0601020304", category: "belgian"}
boheme = {name: "Bohème", address: "75015 Paris", phone_number: "0645623548", category: "french"}
buddha = {name: "Buddha Bar", address: "75008 Paris", phone_number: "0658943894", category: "japanese"}
felicita = {name: "La Felicita", address: "75013 Paris", phone_number: "0759861208", category: "italian"}

[bonnie, girafe, boheme, buddha, felicita].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
