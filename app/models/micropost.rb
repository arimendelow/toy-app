class Micropost < ApplicationRecord
  belongs_to :user
  # Constrain micropost length to 140 chars
  validates :content, length: { maximum: 140 }, presence: true

end
