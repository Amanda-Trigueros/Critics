# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Start seeding"
Company.destroy_all
Platform.destroy_all
Genre.destroy_all
Game.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('companies')
ActiveRecord::Base.connection.reset_pk_sequence!('critics')
ActiveRecord::Base.connection.reset_pk_sequence!('games')

puts "Seeding Companies"

sony = Company.create(name: "Sony Interactive Entertainment", description: "Formerly: Sony Computer Entertainment.", start_date: "1993", country: "Japan")
sony.cover.attach(io: File.open('app/assets/images/sony.png'), filename: 'sony.png')

nintendo = Company.create(name: "Nintendo", description: "Nintendo Co., Ltd. is a multinational corporation located in Kyoto, Japan. Founded....", start_date: "1916", country: "Japan")
nintendo.cover.attach(io: File.open('app/assets/images/nintendo.png'), filename: 'nintendo.png')

activision = Company.create(name: "Activision", description: "For more than 30 years, Activision has been changing the way people play. In the process, we have built...", start_date: "1979", country: "United States of America")
activision.cover.attach(io: File.open('app/assets/images/activision.png'), filename: 'activision.png')

puts "Seeding Games"

last = Game.create(name: "The Last of Us", summary: "A third person shooter/stealth/survival hybrid, in which twenty years after the outbreak of a par...", release_date: "2013")
last.cover.attach(io: File.open('app/assets/images/last.png'), filename: 'last.png')

borderland = Game.create(name: "Borderlands 3", summary: "Borderlands, in which twenty years after the outbreak of a par...", release_date: "2013")
borderland.cover.attach(io: File.open('app/assets/images/borderland.png'), filename: 'borderland.png')

tomb = Game.create(name: "Tomb Raider", summary: "The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Bl...", release_date: "2010")
tomb.cover.attach(io: File.open('app/assets/images/tomb.png'), filename: 'tomp.png')

zelda = Game.create(name: "Zelda", summary: "Zelda is the original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Bl...", release_date: "2003")
zelda.cover.attach(io: File.open('app/assets/images/zelda.png'), filename: 'zelda.png')

mario = Game.create(name: "Mario", summary: "Mario shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Bl...", release_date: "2001")
mario.cover.attach(io: File.open('app/assets/images/mario.png'), filename: 'mario.png')

puts "Seeding Critics"
critic1 = Critic.create(title: "Critic 1", body: "This is an example of a critic for this company." , criticable: sony)
critic2 = Critic.create(title: "Critic 2", body: "This is an example of a critic for this game." , criticable: last)

puts "Seeding Users"
user = User.create(username: "user_test", email: "user@test.com", birth_date: "1990-01-01", first_name: "User", last_name:"Test")
amanda = User.create(username: "amanda01", email: "amanda@test.com", birth_date: "1997-01-16", first_name: "Amandar", last_name:"Trigueros")
rossio = User.create(username: "rossio02", email: "rossio@test.com", birth_date: "1990-01-01", first_name: "Rossío", last_name:"Lachos")
pedro = User.create(username: "pedro03", email: "pedro@test.com", birth_date: "1995-01-02", first_name: "Pedro", last_name:"Arias")

puts "Seeding Genres"
shooter = Genre.create(name: "Shooter")
sport = Genre.create(name: "Sport")
adventure = Genre.create(name:"Adventure")
simulator = Genre.create(name:"Simulator")

puts "Seeding Platforms"
play = Platform.create(name: "Play Station 4")
xbox = Platform.create(name: "Xbox 360")

