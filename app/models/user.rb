class User < ActiveRecord::Base
  validates :name, :password, :email, presence: true
end