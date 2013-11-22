require 'spec_helper'

describe DodontsController, "basic routes and put/post testing: " do

  before(:all) do
    @category = Category.new
    @category.name = 'my cat'
    @category.instructions = 'my inst'
    @category.save

    @dodont = Dodont.new
    @dodont.content = "learn sublime shortcuts"
    @dodont.category = @category
    @dodont.save
  end

  it "index action" do
    get :index
    expect(response.status).to eq 200
  end

  it "increments a do vote from the index" do
    params = { 'command' => "dont", 'id' => @dodont.id }
    expect { put :update, params }.to change { Dodont.last.donts }.by(1)
  end

  it "increments a dont vote from the index" do
    params = { 'command' => "do", 'id' => @dodont.id }
    expect { put :update, params }.to change { Dodont.last.dos }.by(1)
  end

  it "new action" do
    get :new
    expect(response.status).to eq 200
  end

  it "creates a new plain text dodont" do
    params = { "dodont" => { "content" => "Hello1", "category_id" => @category.id }, "commit" => "Post" }
    expect { post :create, params }.to change { Dodont.all.length }.by(1)
  end

  it "refuses to save a blank dodont to the table" do
    params = { "dodont" => { "content" => "", "category_id" => @category.id  }, "commit" => "Post" }
    expect { post :create, params }.to change { Dodont.all.length }.by(0)
  end

end

describe DodontsController, "random sampling testing: " do

  before(:all) do
    @dodont = Dodont.new
    @dodont.content = "learn sublime shortcuts"
    @dodont.save
  end

  it "creates a beenthere session if none exists" do
    expect { get :show }.to change { session[:beenthere] }
  end

  it "changes the beenthere session after showing a dodont" do
    session[:beenthere] = []
    expect { get :show }.to change { session[:beenthere] }
  end

end
