class User < ActiveRecord::Base
  has_many :votes
  has_many :dodonts, through: :votes
  validates :name, :password, :email, presence: true
  validates :email, uniqueness: true
  validate :email_is_of_valid_format
  validates_confirmation_of :password, :email

  attr_accessible :name, :password, :email, :email_confirmation, :password_confirmation

  def email_is_of_valid_format
    unless self.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      self.errors[:email] << "is not a valid email"
    end
  end
end