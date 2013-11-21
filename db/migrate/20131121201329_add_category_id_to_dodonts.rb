class AddCategoryIdToDodonts < ActiveRecord::Migration
  def change
    add_column :dodonts, :category_id, :integer
  end
end
