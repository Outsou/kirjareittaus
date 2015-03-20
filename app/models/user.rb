class User < ActiveRecord::Base
  has_many :reviews

  validates :username, uniqueness: true,
            length: { minimum: 3,
                      maximum: 15 }
  validates :password, length: { minimum: 4 }
  validates_format_of :password, :with => /(?=.*[A-Z])(?=.*[0-9])/

  has_secure_password
end
