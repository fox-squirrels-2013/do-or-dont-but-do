require 'spec_helper'

describe Dodont do
  it "default value of dos is set to 0" do
    category = Category.new
    category.name = 'something'
    category.instructions = 'something more'
    category.save
    dodont = Dodont.new
    dodont.content = "Hi Hu"
    dodont.category_id = category.id
    dodont.save
    expect(dodont.dos).to eq 0
  end

  it { should validate_presence_of(:content) }

  it "rejects content that contains markup" do
    category = Category.new
    category.name = 'something'
    category.instructions = 'something more'
    category.save
    dodont = Dodont.new
    dodont.content = "<h1>Hi</h1>"
    dodont.category_id = category.id
    dodont.save
    expect(dodont.errors.full_messages).to include("Content cannot contain scripts or markup")
  end

  it "adds markup on save if category's name is 'image'" do
    category = Category.new
    category.name = 'image'
    category.instructions = 'blah blah'
    category.save
    dodont = Dodont.new
    dodont.content = 'some_link'
    dodont.category_id = category.id
    dodont.save
    expect(dodont.content).to eq "<img class='image' src='some_link'>"
  end

  it "adds markup to YouTube video link that is in long-form if category's name is 'youtube video'" do
    category = Category.new
    category.name = 'youtube video'
    category.instructions = 'blah blah'
    category.save
    dodont = Dodont.new
    dodont.content = "http://www.youtube.com/watch?v=R7AXBOT8KzU"
    dodont.category_id = category.id
    dodont.save
    expect(dodont.content).to eq "<iframe class='video' src='//www.youtube.com/embed/R7AXBOT8KzU' frameborder='0' allowfullscreen></iframe>"
  end

  it "adds markup to YouTube video link that is in short-form if category's name is 'youtube video'" do
    category = Category.new
    category.name = 'youtube video'
    category.instructions = 'blah blah'
    category.save
    dodont = Dodont.new
    dodont.content = "http://youtu.be/R7AXBOT8KzU"
    dodont.category_id = category.id
    dodont.save
    expect(dodont.content).to eq "<iframe class='video' src='//www.youtube.com/embed/R7AXBOT8KzU' frameborder='0' allowfullscreen></iframe>"
  end
end


