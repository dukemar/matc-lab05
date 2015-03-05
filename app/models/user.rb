class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :email, presence: true
  has_secure_password
end
# re-do, make a new model with only name and password, not email