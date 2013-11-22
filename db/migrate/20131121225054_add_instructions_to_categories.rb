class AddInstructionsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :instructions, :string
  end
end
