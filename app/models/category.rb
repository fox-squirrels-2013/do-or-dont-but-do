class Category < ActiveRecord::Base
  has_many :dodonts
  validates :name, :instructions, :presence => true
end