class Chirp < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :user_chirps
  has_many :user_chirps
end
