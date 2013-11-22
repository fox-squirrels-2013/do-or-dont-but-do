class CategoriesController < ApplicationController
  def show
    category = Category.find_by_id(params[:id])
    render :json => category.instructions.to_json
  end
end