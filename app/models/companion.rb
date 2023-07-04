class Companion < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3}
    validates :age, presence: true, length: { minimum:18 }
    validates_presence_of :height, :bio
end
