class UserChirp < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :chirp
end
