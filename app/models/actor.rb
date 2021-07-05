class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows,through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def list_roles
        hash = {}
        new_arr = []
        Character.all.each do |char|
            if char.actor == self
                hash[char] = char.show
                # binding.pry
                new_arr << "#{char.name} - #{char.show.name}"
            end
        end
        new_arr
    end
end