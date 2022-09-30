# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

events_seed = [
  {
    name: 'Knocked Out',
    abbreviation: 'KO',
    description: 'The baker gets sent home',
    value: -5
  },
  {
    name: 'Star Baker',
    abbreviation: 'SB',
    description: 'The baker gets star baker',
    value: 10
  },
  {
    name: '1st in Technical',
    abbreviation: 'WT',
    description: 'The baker gets 1st in the technical',
    value: 3
  },
  {
    name: '2nd in Technical',
    abbreviation: 'WT2',
    description: 'The baker gets 2nd in the technical',
    value: 2
  },
  {
    name: '2nd to last in Technical',
    abbreviation: 'LT',
    description: 'The baker gets 2nd to last in the technical',
    value: -2
  },
  {
    name: 'Last in Technical',
    abbreviation: 'LT2',
    description: 'The baker gets last in the technical',
    value: -3
  },
  {
    name: 'Handshake',
    abbreviation: 'HS',
    description: 'Paul Hollywood give the baker a handshake',
    value: 10
  },
  {
    name: 'Handshake in Showstopper',
    abbreviation: 'HSS',
    description: 'Paul Hollywood give the baker a handshake during a showstopper',
    value: 15
  },
  {
    name: 'Floor Drop',
    abbreviation: 'FD',
    description: 'The bake touches the floor after completion',
    value: -6
  },
  {
    name: 'Table Touch',
    abbreviation: 'TT',
    description: 'The bake touches the table after completion',
    value: -2
  },
  {
    name: "'Burnt' or 'Raw'",
    abbreviation: 'B/R',
    description: "Either of the judges refers to the bake as 'burnt' or 'raw'. Similar words don't count.",
    value: -3
  },
  {
    name: 'Final Win',
    abbreviation: 'FW',
    description: 'The baker wins the Great British Bake Off',
    value: 25
  },
  {
    name: 'Finals',
    abbreviation: 'F',
    description: 'The baker makes it to the final 3 (last episode)',
    value: 15
  },
  {
    name: 'Collapse',
    abbreviation: 'Collapse',
    description: 'The bake collapses',
    value: -4
  }
]

events_seed.each do |event|
  existing = EventType.find_by(name: event['name'])
  EventType.create(event) unless existing
end

bakers_seed = [
  {
    name: 'Abdul',
    bio: 'Raised in Saudi Arabia to Pakistani parents, Abdul is the middle of three children – and the one who got into trouble for pulling apart the electronic devices around the house! All’s well that ends well, though, and he is now an electronics engineer, dividing his time between London and Cambridge. A keen salsa dancer, and a self-confessed space nerd, his interest in baking began when he and his graduate colleagues baked for each other to brighten up their daily coffee breaks. He applies his precision thinking to the chemistry of creating bakes. Matcha is among his favourite flavours.',
    age: 29
  },
  {
    name: 'Carole',
    bio: 'Born and bred in the West Country, Carole lives on a Dorset hillside with her husband, Michael. Her segment on a local radio show is called ‘Compost Carole’; during which she shares her gardening know-how with listeners. Carole brings the artistry that she uses in her garden to her baking, creating colourful and eclectic bakes that are inspired by her passion for horticulture. She began her dedicated baking journey with a first birthday cake for her eldest granddaughter Maisie. Since then, she has refined her skills, using YouTube to teach herself the finer techniques of decoration. Her favourite flavours are fruity and punchy.',
    age: 59
  },
  {
    name: 'Dawn',
    bio: 'The eldest of three children, Dawn lives with her partner Trevor (the self-styled person who tidies up the kitchen after her!) and is mother to three, step-mother to two, and gran/step-gran to four. Describing herself as an artist in and out of the kitchen, Dawn loves the challenge of an illusion cake (the more impossible-sounding, the better), favouring whacky and intricate designs that allow her to express her creative talent. She prides herself on her steady hand and attention to detail, especially when it comes to the intricacy required for lace patterns on biscuits. Her favourite flavours are lemon, salted caramel and anything nutty.',
    age: 60
  },
  {
    name: 'James',
    bio: 'Proud kilt-wearer James grew up in the east-end of Glasgow and moved to England after university. He is a self-proclaimed board game geek and loves horror films from the 70s and 80s. An avid music fan, reflect in his baking style; which is now significantly better than it was during his childhood when he was burning pancakes in his mother’s kitchen! He enjoys the technical side of baking, but is in his element when he makes his bakes his own, with his signature ‘child-friendly horror’ style and adorable decoration. His favourite flavours are anything autumnal, such as mixed spice, apples and caramel.',
    age: 25
  },
  {
    name: 'Janusz',
    bio: 'Janusz grew up in Poland and moved to the UK 10 years ago. He is now living on the southeast coast with his boyfriend, Simon, and their sausage dog, Nigel. Apart from baking, Janusz’s passions include internet culture, watching drag (he even bought his boyfriend a statue of Ru Paul) and collecting movie props. He was inspired to bake by his mother, who always baked on a Saturday; a tradition Janusz continued when he moved away from home to go to university. He describes his baking style as ‘cartoon-like, colourful and camp’, and loves working Polish ingredients into British staples. His favourite flavours are ginger and chocolate.',
    age: 34
  },
  {
    name: 'Kevin',
    bio: 'Surrounded by family and much-loved animals, Kevin is devoted to his nearest and dearest and spends as much time as possible with his wife, Rachel, and his siblings and their partners, laughing, eating and playing board games. A talented musician, who not only teaches but also performs, Kevin is principally a saxophonist, but is accomplished at the flute, the piano and the clarinet too. He began baking when he was 17. His ethos in the kitchen is to use the best, seasonal ingredients and to spend time refining his technique – with these in hand, he believes the presentation will take care of itself. He loves interesting combinations of fruits, herbs, nuts and spices.',
    age: 33
  },
  {
    name: 'Maisam',
    bio: 'Originally from Libya, Maisam has lived in the UK since she was nine. She speaks five languages (English, Arabic, Amazigh, Spanish and Turkish) and aims to make that seven by the time she turns 20. Maisam has a strong creative streak, spending her spare time photographing still-lifes and the world around her. She has been baking since she was about 13 years old, and she loves the science required to get a bake right – often trying something multiple times until it is perfect. Her favourite flavours are inspired by her Mediterranean heritage – she loves the tang of olives, the sweetness of dates and the nuttiness of sesame seeds.',
    age: 18,
    active: false
  },
  {
    name: 'Maxy',
    bio: 'Swedish-born Maxy studied fine art and went on to achieve a Masters degree in Architecture, pausing her final qualifications to raise her two daughters, Tyra and Talia. She has DIY-ed every corner of her flat – from laying the flooring and resurfacing the balcony to painting the walls and hanging her own artwork. She began baking five years ago, with the arrival of her first daughter, and uses her strong artistic skills to create beautifully decorated celebration cakes. Her favourite flavours link to her Scandinavian upbringing – the sweet and delicate spice of cardamom and saffron buns and cinnamon rolls.',
    age: 29
  },
  {
    name: 'Rebs',
    bio: 'Rebs spent her childhood in the countryside in Northern Ireland and loves everything to do with Irish culture – she can Irish dance and play the tin whistle. Her earliest baking memory is of being a child, aged only three years old, helping her mum in the kitchen, and of eating her granny’s renowned lemon meringue pies! More recently, she returned to baking as a way to unwind from the stress of a busy life in the tech world. Flavour is paramount for her, and she has more recently started to play around with Middle Eastern ingredients – in a nod to her boyfriend, Jack’s Turkish family heritage.',
    age: 23
  },
  {
    name: 'Sandro',
    bio: 'Sandro was born in Angola, but fled the Angolan war with his mum when he was two, settling then in London. Passionate about fitness, Sandro is a keen boxer and has a background in ballet and breakdance too! When Sandro was 21 his father passed away and he turned to baking as a form of therapy. Now, he lives and breathes it, and is often found rustling up bakes in a relaxed vibe with the telly on, or running virtual baking classes for children with autism. He likes to infuse his bakes with flavours from his Angolan heritage – the spice of paprika paired with tangy cheese, and sweet bakes smothered in sticky dulce de leche.',
    age: 30
  },
  {
    name: 'Syabira',
    bio: 'Malaysian-born Syabira is one of seven children. She moved to the UK in 2013 to study for her PhD and is now happily settled in London with her boyfriend, Bradley. She loves gaming and often spends evenings playing an online World War II simulation game, which she credits with teaching her about leadership in the real world. Syabira started baking relatively recently – in 2017 – with a red velvet cake, which reminded her of the treats she shared with her friends back home. She is all for giving Malaysian flavour twists to British classics – chicken rendang cornish pasties are a particular favourite.',
    age: 32
  },
  {
    name: 'Will',
    bio: 'One of three children, Will grew up just outside Bristol, before leaving for university in Liverpool. Now he lives in London with his wife, three children and a cat called Tiggy. When he’s not hanging out with his kids, Will loves DIY and carpentry, which indulges his background in architecture, and cooking up new and exciting dishes in the kitchen. His passion for baking began when he was 2, when his mum would give him her pastry trimmings to turn into little jam tarts. Intrigued by the technical side of baking, he is a particular fan of using yeast – and not just in bread! His favourite flavours are salted caramel and paprika (but not at the same time).',
    age: 45,
    active: false
  }
]

bakers_seed.each do |baker|
  existing = Baker.find_by(name: baker['name'])
  Baker.create(baker) unless existing
end

users_seed = [
  {
    name: 'Ben',
    bio: 'He likes to bake but does he?',
    password: 'Ben'
  },
  {
    name: 'Allison',
    bio: 'Jump up, jump up and get down. Bake! Bake! Bake!',
    password: 'Allison'
  },
  {
    name: 'Maeyke',
    bio: 'Oh yeah, she bakes.',
    password: 'Maeyke'
  },
  {
    name: 'Ian',
    bio: "Collectin' degrees and wearin' T's",
    password: 'Ian'
  }
]

users_seed.each do |user|
  existing = User.find_by(name: user['name'])
  User.create(user) unless existing
end
