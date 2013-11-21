class DodontsController < ApplicationController

  def show
    @dodont = Dodont.all.sample
  end

  def update
    p params
    # {"_method"=>"put",
    #  "command"=>"dont",
    #  "id"=>"1"}
    # here we want to use the data to update the model with the correct stuff
    redirect_to root_path
  end

  def index
    @dodonts = Dodont.all
  end
end
