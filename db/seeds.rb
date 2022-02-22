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

creature = Creature.new(
    name: "Mighty",
    kind: "dragon",
    description: "Nice big fat dragon to vainquish anything/one",
    picture_url: "https://downloadwap.com/thumbs2/wallpapers/p2ls/2019/misc/49/96b3baa913206346.jpg",
    address: "far mountain, 45",
    price: "5000€",
    user_id: 1
  )
  creature.save!
  creature_array << creature

creature = Creature.new(
  name: "Vampy",
  kind: "vampire",
  description: "Don't forget to feed it with blood",
  picture_url: "https://img.le-dictionnaire.com/vampire.jpg",
  address: "cave, 765",
  price: "500€",
  user_id: 1
)
creature.save!
creature_array << creature

creature = Creature.new(
  name: "Wolfy",
  kind: "werewolf",
  description: "Only availaible on full moon nights",
  picture_url: "https://i1.wp.com/topcomics.fr/wp-content/uploads/2020/10/1-2.jpg?resize=678%2C400&ssl=1",
  address: "Somewhere, 234 - place",
  price: "100€",
  user_id: 2
)
creature.save!
creature_array << creature

creature = Creature.new(
    name: "CutyX",
    kind: "unicorn",
    description: "You love rainbows ?",
    picture_url: "https://www.computable.be/img/72/26/org_org/7226721.jpg",
    address:"in the sky, 445 - cloud",
    price:"4500€",
    user_id: 2,
)
creature.save!
creature_array << creature
