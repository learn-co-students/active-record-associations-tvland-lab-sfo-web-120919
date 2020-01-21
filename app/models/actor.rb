class Actor < ActiveRecord::Base
    #An actor has many characters and has many shows through characters
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " +self.last_name
    end

    def list_roles
        character_list = self.characters.collect {|c| c.name + ' - ' + c.show.name }
    end
end

