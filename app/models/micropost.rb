class Micropost < ApplicationRecord
  # Constrain micropost length to 140 chars
  validates :content, length: { maximum: 140 } 
end
