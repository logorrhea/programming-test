class Character
    attr_reader :id, :name, :level, :equipment

    CHARACTERS = [{
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
    }]

    def self.all
        CHARACTERS
    end

    def self.find(index)
        CHARACTERS[index] unless (index < 0 || index > CHARACTERS.size)
    end

    def self.search(name)
        CHARACTERS.select { |character| character[:name].downcase =~ /#{name}/ }
    end

end
