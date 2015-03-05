class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true
end
# re-do, make a new model with only name and password, not email