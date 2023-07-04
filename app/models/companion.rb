class Companion < ApplicationRecord
    has_many :posts, dependent: :destroy
    validates :name, presence: true, uniqueness: true, length: { minimum: 3}
    validates :age, presence: true, numericality: { greater_than:18 }
    validates_presence_of :height, :bio
end
