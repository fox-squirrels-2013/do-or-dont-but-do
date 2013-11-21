class AddCategoryIdToDodonts < ActiveRecord::Migration
  def change
    add_column :dodonts, :category, :belongs_to
  end
end
