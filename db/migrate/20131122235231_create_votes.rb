class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.belongs_to :user
  		t.belongs_to :dodont
  		t.boolean :vote              # true = do : false = dont
  	end
  end


end
