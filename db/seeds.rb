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
User.destroy_all

User.create(first_name: "Antoine", last_name: "Martin", username: "am90", email: "antoine_martin@gmail.com", owner: true, password:"123456")
User.create(first_name: "Elise", last_name: "Robert", username: "eli83", email: "elise_robert@gmail.com", password:"123456")

Car.create(brand: "BMW X7 Alpina XB7", category: "SUV", location: "Saint-Viateur street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url: "https://hips.hearstapps.com/hmg-prod/images/2021-alpina-xb7-113-1589833625.jpg")
Car.create(brand: "BMW i4 xDrive40", category: "Sedan", location: "Sainte-Catherine street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url: "https://hips.hearstapps.com/hmg-prod/images/bmw-i4-2-646bd10fe7fb4.jpg?crop=0.704xw:0.528xh;0.139xw,0.324xh&resize=1200:*")
Car.create(brand: "Mercedes-Benz EQB", category: "SUV", location: "Saint-Laurant street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"//www.topgear.com/sites/default/files/2022/03/Large-40342-EQB.jpg")
Car.create(brand: "Porsche Cayenne Turbo E-Hybride", category: "Sport Car", location: "Beaubien street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://hips.hearstapps.com/hmg-prod/images/2024-porsche-cayenne-turbo-e-hybrid-01-64ed055e9f74f.jpg?crop=1xw:0.8433382137628112xh;center,top&resize=1200:*")
Car.create(brand: "Subaru Solterra VUS", category: "SUV", location: "Ontario street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url: "https://img.sm360.ca/images/article/groupelacasse/94197//subaru-solterra-header1637204981779.jpg")
Car.create(brand: "Audi A5 Progressiv", category: "Sport Car", location: "Laurier Avenue, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://rpmweb.ca/medias/Audi-RS5-2023-6.jpg")
Car.create(brand: "Audi A3 Technik", category: "Sedan", location: "Mont-Royal Avenue, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://saltwire.imgix.net/2022/5/26/wheels-car-review-2022-audi-s3-technik-invites-you-to-join-i_HLCHruX.jpg?cs=srgb&fit=crop&h=568&w=847&dpr=1&auto=enhance%2Cformat%2Ccompress")
Car.create(brand: "Tesla Model Y VUS", category: "SUV", location: "Berri Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://www.autoaubaine.com/actualite-automobile/images-automobiles/55811.jpg")
Car.create(brand: "Tesla Model 3", category: "Sedan", location: "Crescent Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://hips.hearstapps.com/hmg-prod/images/2019-tesla-model3-lt-airporthero-low-101-1587061146.jpg?crop=1.00xw:1.00xh;0,0&resize=2048:*" )
Car.create(brand: "Volkswagen e-Golf", category: "Hatchback", location: "Saint-Denis Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url: "https://hips.hearstapps.com/hmg-prod/images/db2017au00888-large-1583171843.jpg")
Car.create(brand: "Ford F-150", category: "Pick-up", location: "Saint-Paul Street, Montreal", start_availability:"2024/01/01", end_availability:"2024/12/31", user:User.first, picture_url:"https://fr.ford.ca/is/image/content/dam/vdm_ford/live/en_ca/ford/nameplate/f-150commercial/2023/collections/dm/23_FRD_F150_AZGR_Lightning_Home.tif?croppathe=1_21x9&wid=1440")
