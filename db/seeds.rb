Creature.destroy_all
User.destroy_all

user_array = []
  user = User.new(
    email: "a@a.a",
    password: "123456",
    first_name: "Ramy",
    last_name: "Sha",
    avatar_url: "https://avatars.githubusercontent.com/u/92589286?v=4"
  )
  user.save!
  user_array << user

  user = User.new(
    email: "c@c.c",
    password: "123456",
    first_name: "Julien",
    last_name: "Lozet",
    avatar_url: "https://avatars.githubusercontent.com/u/92589286?v=4"
  )
  user.save!
  user_array << user

  user = User.new(
    email: "b@b.b",
    password: "123456",
    first_name: "Hadrien",
    last_name: "Reynders",
    avatar_url: "https://avatars.githubusercontent.com/u/82088724?v=4"
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
    price: "5000",
    user: User.sample
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
  price: "500",
  user: User.sample
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
  price: "100",
  user: User.sample
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
    price:"4500",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'uni.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://media.dnd.wizards.com/styles/mosaic_thumbnail/public/images/mosaic/Hill_Giant_Mosaic_Thumbnail_TypeA.jpg')
  creature = Creature.new(
    name: "Hill Giant",
    kind: "giant",
    description: "Big ol giant",
    address:"Sonderbuur 121, 1068 AK Amsterdam",
    price:"450",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'giant.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://www.worldanvil.com/uploads/images/300e80d58efd67383ef22ae956bf999c.jpg')
  creature = Creature.new(
    name: "Githyanki",
    kind: "reavers",
    description: "Arguably the most skilled navigators of the Astral Plane, the gaunt, yellow-skinned githyanki are the reavers of a thousand worlds.",
    address:"Tehran Province, Tehran, District 6, 25th St, Iran",
    price:"200",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'git.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://www.gmbinder.com/images/BTjiJof.jpg')
  creature = Creature.new(
    name: "KUO-TOA",
    kind: "murloc",
    description: "Kuo-toa are sadistic, degenerate fish-like humanoids that once inhabited the shores and islands of the surface world.",
    address:"29884-29556 Pike Rd 293, Clarksville, MO 63336, États-Unis",
    price:"150",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'kuo.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://static.wikia.nocookie.net/forgottenrealms/images/f/f4/Mindwhisperer5e.PNG/revision/latest/top-crop/width/360/height/450?cb=20200506092425')
  creature = Creature.new(
    name: "Yuan-ti",
    kind: "snake",
    description: "Devious serpent folk devoid of compassion, yuan-ti manipulate other creatures by arousing their doubts, evoking their fears, and elevating and crushing their hopes..",
    address:"19910 Fay Cove, Ash Shamal",
    price:"300",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'yan.png', content_type: 'image/png')
  creature.save!
  creature_array << creature

  file = URI.open('https://static.wikia.nocookie.net/non-aliencreatures/images/0/04/Image-0.jpg/revision/latest?cb=20150421215922')
  creature = Creature.new(
    name: "Umber Hulk",
    kind: "croach",
    description: "An abominable horror from deep beneath the earth, an umber hulk burrows into cave complexes, dungeons, or Underdark settlements in search of food—especially the humanoid prey it craves.",
    address:"560 Orrin Gardens, Kalimantan central",
    price:"1000",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'umber.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://lartboratoire.fr/wp-content/uploads/1970/01/new_17.jpg')
  creature = Creature.new(
    name: "Lich",
    kind: "Wizard",
    description: "A lich is spawned when a great wizard embraces the evil state of undeath as a means of extending life beyond its mortal limits. Scheming and insane, they hunger for long-forgotten knowledge and the most terrible secrets.",
    address:"7663 Smith Street, Al Boutnan",
    price:"3000",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'lich.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://64.media.tumblr.com/51472adb83e1b6b990548ba510a27f04/5e7c07a98b1e996c-eb/s1280x1920/acbfcdcc85e0ee888cdc3587d5fb8a8d85d918d6.jpg')
  creature = Creature.new(
    name: "Displacer Beast",
    kind: "beast",
    description: "This monstrous predator takes its name from its ability to mask itself with illusion, displacing light so that it appears to be somewhere it is not.",
    address:"800 Beer Walks, Oblast de Tcherkassy",
    price:"900",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'beast.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://cdn.inprnt.com/thumbs/01/0f/010fc7dce73288895779d02191ee0752.jpg?response-cache-control=max-age=2628000')
  creature = Creature.new(
    name: "Owlbear",
    kind: "owl",
    description: "The owlbear’s reputation for ferocity, aggression, stubbornness, and sheer ill temper makes it one of the most feared predators of the wild.",
    address:"16957 Pfannerstill Lock, Fakaofo",
    price:"300",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'owl.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://static.wikia.nocookie.net/forgottenrealms/images/7/7e/Baleful_Beholder.jpg/revision/latest/scale-to-width-down/1200?cb=20210701114329')
  creature = Creature.new(
    name: "Beholder",
    kind: "monster",
    description: "One glance at a beholder is enough to assess its foul and otherworldly nature. Aggressive, hateful, and greedy, these aberrations dismiss all other creatures as lesser beings, toying with them or destroying them as they choose....",
    address:"75009 Trevion Fall, Pool",
    price:"2200",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'holder.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://angrygolem-games.com/wp-content/uploads/2021/04/red-slaad.jpg')
  creature = Creature.new(
    name: "Slaad",
    kind: "monster",
    description: "The only creatures native to the inhospitable realm of Limbo are the batrachian slaadi, which thrive in the chaotic torrent of its elements.",
    address:"958 Bayer Isle, 97180, Guadeloupe, Pointe-à-Pitre, Sainte-Anne",
    price:"1100",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'slaad.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://static.wikia.nocookie.net/eberron/images/d/dd/Karrnathi_bulette.jpg/revision/latest?cb=20210822121945')
  creature = Creature.new(
    name: "Bulette",
    kind: "shark",
    description: "Bulettes (or land sharks) use their powerful claws to tunnel through the earth when they hunt.",
    address:"5646 Cathy Fork, Amudat, Morunyang",
    price:"1700",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'bulette.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://pbs.twimg.com/media/E5UL1LvVEAAjuh1?format=jpg&name=large')
  creature = Creature.new(
    name: "Mind Flayer",
    kind: "wizard",
    description: "Psionic tyrants, slavers, and interdimensional voyagers, mind flayers are insidious masterminds that harvest entire races for their own twisted ends.",
    address:"24144 Gisselle Neck, Fakaofo",
    price:"400",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'mind.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://lichlair.com/wp-content/uploads/2020/02/rust-monster-dnd.png')
  creature = Creature.new(
    name: "Rust Monster",
    kind: "monster",
    description: "These strange, normally docile creatures corrode ferrous metals, then gobble up the rust they create.",
    address:"877 Hipolito Turnpike, Kabalebo",
    price:"175",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'rust.png', content_type: 'image/png')
  creature.save!
  creature_array << creature

  file = URI.open('https://cdn.shopify.com/s/files/1/0525/4997/6226/products/d0c0dd19-ccbf-54a7-90b3-72ebfa9dc6d4_800x.jpg?v=1636833692')
  creature = Creature.new(
    name: "Gelatinous Cube",
    kind: "cube",
    description: "These creatures scour dungeon passages in silent, predictable patterns, leaving perfectly clean paths in their wake. They consume living tissue while leaving bones and other materials undissolved.",
    address:"82154 Brekke Land, 445, Streymoy region, Tjørnuvík",
    price:"245",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'cube.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://www.aidedd.org/dnd/images/cloud-giant-smiling-one.jpg')
  creature = Creature.new(
    name: "Cloud Giant",
    kind: "giant",
    description: "A cloud giant earns its place in the ordning by the treasure it accumulates, the wealth it wears, and the gifts it bestows on other cloud giants.",
    address:"122, La Provençale, Nice",
    price:"1200",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'cloud.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://www.aidedd.org/assets/univers/ecologie/kobold1.jpg')
  creature = Creature.new(
    name: "Kobold",
    kind: "lizard",
    description: "Kobolds are craven reptilian humanoids that worship evil dragons as demigods and serve them as minions and toadies.",
    address:"353 Medhurst Mount, Comitat de Požega-Slavonie, Općina Čaglin, Stara Ljeskovica",
    price:"1050",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'kubold.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature

  file = URI.open('https://ubistatic-a.akamaihd.net/0004/prod/images/units/fortress/PIC_creature_fortress_firegiant_upg_artwork_small.jpg')
  creature = Creature.new(
    name: "Fire Giant",
    kind: "giant",
    description: "Fire giants have a fearsome reputation as soldiers and conquerors, and for their ability to burn, plunder, and destroy.",
    address:"6131 Brandyn Ways, Melekeok, Ngerulmud",
    price:"2100",
    user: User.sample
  )
  creature.photo.attach(io: file, filename: 'fire.jpg', content_type: 'image/jpg')
  creature.save!
  creature_array << creature
