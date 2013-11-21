class CreateDoDonts < ActiveRecord::Migration
  def change
    create_table :do_donts do |t|
      t.string :content
      t.integer :dos, default: 0
      t.integer :donts, default: 0
    end
  end
end
