class Dodont < ActiveRecord::Base
  belongs_to :category
  validates :content, presence: true

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

end
