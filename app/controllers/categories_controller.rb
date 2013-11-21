class CategoriesController < ApplicationController
  def show
    category = Category.find_by_id(params[:id])
    puts category
    puts category.instructions
    render :json => category.instructions.to_json
  end
end