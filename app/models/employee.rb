class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, presence: {message: "please enter a name"}
    validates :last_name, presence: {message: "please enter a name"}
    validates :title, uniqueness: {message: "already exists"}
    validates :alias, uniqueness: {message: "already exists"}
end
