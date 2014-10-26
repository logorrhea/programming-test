
characters = [{
    id: 1,
    name: 'Tim the Enchanter',
    level: 99,
    equipment: ['Force Staff'],
    avatar: 'tim.jpg',
    description: "The fire-loving, horned-helmeted, robed, foul-mouthed, bearded enchanter Tim the Enchanter, is the sworn enemy of the Killer Rabbit. Tim was a moderately famous pyromaniac and conjuror on many Monty Python films such as Monty Python And The Quest For The Holy Grail. Tim was born in the late 2nd century to a couple of peasants named William and Rosalia Gates (nee Mera)."
},{
    id: 2,
    name: 'Jake the Dog',
    level: 28,
    equipment: ['Fur', 'Tail', 'Freaky Round Eyes'],
    avatar: 'jake.jpg',
    description: "Jake was conceived when his father, Joshua, was bit by an extra-dimensional creature during an investigation with his wife Margaret. Jake was later born from the pustule on his father's head from the creature's bite and was taken by Joshua and Margaret to live alongside their natural-born son Jermaine. It is inferred that Jake's Stretchy Powers that he has had since he was a puppy are a result of his biological relationship with the shape-shifting creature. Little is known of Jake's past with his family, but for a while he was known to be a successful criminal until he retired to take part in a more respectable life as an adventurer with Finn, later settling down with Lady Rainicorn to become a father."
},{
    id: 3,
    name: 'Solaire of Astora',
    level: 2,
    equipment: ["Astora's Straight Sword", 'Sunlight Shield', 'Iron Helm',
                'Armor of the Sun', 'Iron Bracelet', 'Iron Leggings'],
    avatar: 'solaire.png',
    description: "Solaire of Astora is a Knight of Sunlight who will help the player in many different areas. He is a cheerful and powerful knight who does not let the crumbling world affect his mood. He speaks of willingly becoming an Undead so that he could search for his own sun. Though to be Lord Gwyn's firstborn."
}]

characters.each do |char_hash|
    Character.create(char_hash)
end
