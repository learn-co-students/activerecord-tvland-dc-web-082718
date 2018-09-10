class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      # binding.pry
      Actor.find_by(first_name: self.first_name)
      [self.first_name, self.last_name].join(' ')
    end

    def list_roles
      # binding.pry
      character = self.characters
      character.map { |character|
        "#{character.name} - #{Show.find(character.show_id).name}"
      }
    end

end
