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
restaurants_attributes = [
  {
    name: "Chez Momo",
    address: "10 rue de Paris, Paris",
    phone_number: "0123456789",
    category: "french"
  },
  {
    name: "La Bella Napoli",
    address: "20 rue de Rome, Marseille",
    phone_number: "0987654321",
    category: "italian"
  },
  {
    name: "Sushi Master",
    address: "5 avenue de Tokyo, Lyon",
    phone_number: "0147258369",
    category: "japanese"
  },
  {
    name: "Panda Express",
    address: "15 boulevard de Pékin, Toulouse",
    phone_number: "0172839456",
    category: "chinese"
  },
  {
    name: "Bruxelles Bistro",
    address: "30 place de Bruxelles, Lille",
    phone_number: "0158492736",
    category: "belgian"
  }
]

restaurants_attributes.each do |attributes|
  restaurant = Restaurant.new(attributes)
  restaurant.save!
end

puts "Finished!"
