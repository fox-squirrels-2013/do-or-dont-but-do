require 'spec_helper'


	describe Vote do
		
		context "Consequence of a vote action" do
			before(:each) do
				@user = User.create!(name: "Ben", email: "ben@test.de", email_confirmation: "ben@test.de", password: "hi", password_confirmation: "hi")
				@dodont = Dodont.create!(:content => "Ben voted on that", :category_id => 1 )

			end	

			it "belongs to User and increases do count by one" do
			 expect { vote!(do!)) }.to change(@dodont, :count)	
			end


			it "belongs to Dodont"

	end

end	