class Dog < ApplicationRecord
    has_many :employees

    def namebreed
        "#{self.name} (#{self.breed})"
    end
end
