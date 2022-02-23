# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_array = []
  user = User.new(
    email: "a@a.a",
    password: "123456",
    first_name: "Ramy",
    last_name: "Sha"
  )
  user.save!
  user_array << user

  user = User.new(
    email: "b@b.b",
    password: "123456",
    first_name: "Hadrien",
    last_name: "Rey"
  )
  user.save!
  user_array << user

creature_array = []

file = URI.open('https://cdn.hswstatic.com/gif/dd-5.jpg')
creature = Creature.new(
    name: "Mighty",
    kind: "dragon",
    description: "Nice big fat dragon to vainquish anything/one",
    address: "far mountain, 45",
    price: "5000€",
    user_id: 1
  )
  creature.photo.attach(io: file, filename: 'dragon.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://img.le-dictionnaire.com/vampire.jpg')
  creature = Creature.new(
  name: "Vampy",
  kind: "vampire",
  description: "Don't forget to feed it with blood",
  address: "cave, 765",
  price: "500€",
  user_id: 1
)
creature.photo.attach(io: file, filename: 'vampire.jpg', content_type: 'image/jpg')
creature.save!
creature_array << creature

file = URI.open('https://static.wikia.nocookie.net/mtgsalvation_gamepedia/images/9/97/Wolf.jpg/revision/latest/scale-to-width-down/250?cb=20190514081232')
creature = Creature.new(
  name: "Wolfy",
  kind: "werewolf",
  description: "Only availaible on full moon nights",
  address: "Somewhere, 234 - place",
  price: "100€",
  user_id: 2
)
creature.photo.attach(io: file, filename: 'wolf.jpg', content_type: 'image/jpg')
creature.save!
creature_array << creature

file = URI.open('https://www.computable.be/img/72/26/org_org/7226721.jpg')
creature = Creature.new(
    name: "CutyX",
    kind: "unicorn",
    description: "You love rainbows ?",
    address:"in the sky, 445 - cloud",
    price:"4500€",
    user_id: 2
  )
  creature.photo.attach(io: file, filename: 'uni.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  puts "done"
