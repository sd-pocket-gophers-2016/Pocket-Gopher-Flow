class User < ActiveRecord::Base
  has_secure_password
  has_many :posts

  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    if user && user.password == password
      return user
    else
      nil
    end
  end

end
