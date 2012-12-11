class Profile < ActiveRecord::Base
  attr_accessible :image_url, :name, :user_id, :taille, :birthday, :gender
  belongs_to :user
end
