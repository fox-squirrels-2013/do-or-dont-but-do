require 'spec_helper'

describe CategoriesController do
  it "should respond with json" do

    @expected = '"our instructions"'
    @category = Category.new
    @category.name = "a name"
    @category.instructions = "our instructions"
    @category.save

    get :show, id: @category.id
    expect(response.body).to eq @expected
  end

end