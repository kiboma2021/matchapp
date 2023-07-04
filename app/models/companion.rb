class Companion < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3}
    validates_presence_of :height, :bio, :age
end
