class DoDont < ActiveRecord::Base
  validates :content, presence: true
end