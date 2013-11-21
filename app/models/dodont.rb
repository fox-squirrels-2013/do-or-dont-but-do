class Dodont < ActiveRecord::Base
  belongs_to :category
  validates :content, :category_id, presence: true
  # before_save :validate_by_category_type, :add_markup

  def vote!(cmd)
    if (cmd == "do")
      self.do!
    else
      self.dont!
    end
  end

  def do!
    self.dos += 1
  end

  def dont!
    self.donts += 1   
  end

  # private

  # def validate_by_category_type
  #   if self.category_id == 1
  #     puts 'looks like a image'
  #   elsif self.category_id == 2
  #     puts 'looks like a picture'
  #   elsif self.category_id == 3
  #     puts 'looks like a YouTube video'
  # end

  # def add_markup
  # end

end
