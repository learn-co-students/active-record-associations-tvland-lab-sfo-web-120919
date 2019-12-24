class CreateCharacters < ActiveRecord::Migration[6.0]
    def change 
      create_table :characters do |t|
  
          t.string :name
          t.belongs_to :actor 
          t.belongs_to :show
        
      end 
    end 
  end 