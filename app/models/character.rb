class Character
    include MongoMapper::Document

    key :name, String
    key :avatar, String
    key :level, Integer
    key :equipment, Array

    #attr_reader :id, :name, :level, :equipment


    #def self.all
        #CHARACTERS
    #end

    #def self.find(index)
        #CHARACTERS.select { |character|
            #character[:id] == index
        #}.first
    #end

    #def self.search(name)
        #search_string = Regexp.escape(name.downcase)
        #CHARACTERS.select { |character| character[:name].downcase =~ /#{search_string}/ }
    #end

end
