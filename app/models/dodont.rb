class Dodont < ActiveRecord::Base
  belongs_to :category
  validates :content, :category_id, presence: true
  validate :screen_for_markup
  before_save :add_markup

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

  private

  def screen_for_markup
    if (self.content =~ /</) || (self.content =~ />/)
      errors.add(:content, "cannot contain scripts or markup")
    end
  end

  def add_markup
    category_name = Category.find(self.category_id).name
    if category_name.downcase == "image"
      self.content = "<img width='400' src='" + self.content + "'>"
    elsif category_name.downcase == "youtube video"
      uri_ending = self.content.split('/')[-1]
      if uri_ending =~ /watch\?v=/
        uri_ending = uri_ending.split('=')[-1]
      end
      self.content = "<iframe width='300' height='169' src='//www.youtube.com/embed/" + uri_ending +"' frameborder='0' allowfullscreen></iframe>"
    end
  end

end
