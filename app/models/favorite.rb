class Favorite < ApplicationRecord
  
  belong_to :user
  belong_to :post_image
  
  validates :user_id, uniqueness: {scope: :post_image_id}
  
end
