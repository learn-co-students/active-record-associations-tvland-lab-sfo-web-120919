class Show < ActiveRecord::Base
  #A show belongs to a network and has many characters and has many actors through characters
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.collect {|a| a.full_name }
    end
end