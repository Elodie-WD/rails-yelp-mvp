# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

la_favolla = {name: "La Favolla", address: "dans le vieux Nice", phone_number: "0475643422", category: "italian"}
crespi = {name: "Crespi", address: "sur la zone pietonne, Nice", phone_number: "0476653523", category: "italian"}
sushi_party = {name: "Sushi_party", address: "faut chercher, Bordeaux", phone_number: "0577663624", category: "japanese"}
pekin_express = {name: "Pekin_Express", address: "vers place de la Bourse peut-être, Bordeaux", phone_number: "057873624", category: "french"}
la_bonne_gaufre = {name: "La_Bonne_Gaufre", address: "je ne sais pas, Bordeaux", phone_number: "057973725", category: "belgian"}


[la_favolla, crespi, sushi_party, pekin_express, la_bonne_gaufre].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
