class CategoriesController < ApplicationController
  def show
    category = Category.find_by_id(params[:id])
    p "----------------------"
    p category
    p "----------------------"
    p category.instructions
    p "----------------------"
    render :json => category.instructions.to_json
  end
end