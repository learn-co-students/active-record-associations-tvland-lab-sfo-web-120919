class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    def actors_list
        new_arr = []
        Character.all.each do |char|
            if char.show == self
                new_arr << char.actor.first_name  + " " + char.actor.last_name
            end
        end
        new_arr
    end
end