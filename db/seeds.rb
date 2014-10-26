# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


characters = [{
    id: 1,
    name: 'Tim the Enchanter',
    level: 99,
    equipment: ['Force Staff'],
    avatar: 'tim.jpg'
},{
    id: 2,
    name: 'Jake the Dog',
    level: 28,
    equipment: ['Fur', 'Tail', 'Freaky Round Eyes'],
    avatar: 'jake.jpg'
},{
    id: 3,
    name: 'Solaire of Astora',
    level: 2,
    equipment: ["Astora's Straight Sword", 'Sunlight Shield', 'Iron Helm',
                'Armor of the Sun', 'Iron Bracelet', 'Iron Leggings'],
    avatar: 'solaire.png'
}]

characters.each do |char_hash|
    Character.create(char_hash)
end
