class DodontsController < ApplicationController

  def show
    session[:beenthere] ||= []
    @dodont = Dodont.all.reject{|dd| session[:beenthere].include?(dd.id) }.sample

    # replacing above with this would be cleaner but then the model would need to know about sessions
    # @dodont = Dodont.not_yet_visited

    unless @dodont.nil?
      session[:beenthere] << @dodont.id
      render :show
    else
      @dodonts = Dodont.all
      render :index
    end
  end

  def update
    @dodont = Dodont.find(params[:id])
    @dodont.vote!(params[:command])
    @dodont.save
    redirect_to root_path
  end

  def index
    @dodonts = Dodont.all
    p @dodonts
  end

  def new
    @dodont = Dodont.new
  end

  def create
    dodont = Dodont.new
    dodont.content = params[:dodont][:content]
    if dodont.save
      redirect '/'
    else
      render new
      # add error messages soon
    end
  end
end
