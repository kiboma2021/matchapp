class Post < ApplicationRecord
  belongs_to :companion
  validates :body, presence: true, length: { minimum: 10 }
end
