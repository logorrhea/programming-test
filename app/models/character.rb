class Character

    include MongoMapper::Document

    key :name, String
    key :avatar, String
    key :level, Integer
    key :equipment, Array

end
