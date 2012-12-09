class Profile < ActiveRecord::Base
  attr_accessible :image_url, :name, :user_id
  belongs_to :user
end
