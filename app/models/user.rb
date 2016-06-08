class User < ActiveRecord::Base
  has_secure_password
  has_many :posts

  validates :username, :email, :password, presence: true
  validates :username, :email,  uniqueness: true

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && BCrypt::Password.new(user.password_digest) == password
      return user
    else
      nil
    end
  end

end
