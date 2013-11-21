class Dodont < ActiveRecord::Base
  validates :content, presence: true
end