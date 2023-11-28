# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Car.create(brand: "BMW X7 Alpina XB7", category: "SUV", location: "Saint-Viateur street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "BMW i4 xDrive40", category: "Sedan", location: "Sainte-Catherine street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Mercedes-Benz EQB", category: "SUV", location: "Saint-Laurant street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Porsche Cayenne Turbo E-Hybride", category: "Sport Car", location: "Beaubien street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Subaru Solterra VUS", category: "SUV", location: "Ontario street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Audi A5 Progressiv", category: "Sport Car", location: "Laurier Avenue, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Audi A3 Technik", category: "Sedan", location: "Mont-Royal Avenue, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Tesla Model Y VUS", category: "SUV", location: "Berri Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Tesla Model 3", category: "Sedan", location: "Crescent Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Volkswagen e-Golf", category: "Hatchback", location: "Saint-Denis Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
Car.create(brand: "Ford F-150", category: "Pick-up", location: "Saint-Paul Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first)
