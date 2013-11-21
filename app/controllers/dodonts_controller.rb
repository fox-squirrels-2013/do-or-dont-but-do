##################################################################
# this is a fake model for now
#! REMOVE THIS LINE ASAP
Dodont = Struct.new(:id, :content, :dos, :donts)
##################################################################

class DodontsController < ApplicationController

  def show
    @dodont = Dodont.new(1, "sneaze on keyboard", 0, 0)
  end

  def update
    p params
    # {"_method"=>"put", 
    #  "command"=>"dont", 
    #  "id"=>"1"}
    # here we want to use the data to update the model with the correct stuff
    redirect_to root_path
  end

end
