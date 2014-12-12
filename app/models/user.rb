class User < ActiveRecord::Base
  has_many :followers, through: :follower_follows, source: :follower
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"

  has_many :followees, through: :followee_follows, source: :followee
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"

  has_many :chirps, through: :user_chirps
  has_many :user_chirps

  def password=(plaintext)
    self.password_hash = BCrypt::Password.create(plaintext)
  end

  def authenticate(plaintext_password)
    if BCrypt::Password.new(self.password_hash) == plaintext_password
      return true
    else
      return false
    end
  end

end
