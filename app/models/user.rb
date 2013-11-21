class User < ActiveRecord::Base
  validates :name, :password, :email, presence: true
  validates :email, uniqueness: true
  validate :email_is_of_valid_format

  def email_is_of_valid_format
    unless self.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      self.errors[:email] << "is not a valid email"
    end
  end
end