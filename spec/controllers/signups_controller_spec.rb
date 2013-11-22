require 'spec_helper'

  describe SignupsController do
    it "renders sign up page" do
      get :new
      expect(response).to render_template("new")
    end

    # before :all do
    #   params  = { name }

    it "creates new user"  do
      params = {"user" => {"name"=>"Ben", "email"=>"ben@test.de", "email_confirmation"=>"ben@test.de", "password"=>"1q1q1q1q", "password_confirmation"=>"1q1q1q1q"}}

      expect { post :create, params}.to change { User.all.length }.by(1)
    end

    it "does not create a new user when email is not confirmed correctly "  do
      params = {"user" => {"name"=>"Ben", "email"=>"ben@test.de", "email_confirmation"=>"marion@test.de", "password"=>"1q1q1q1q", "password_confirmation"=>"1q1q1q1q"}}

      expect { post :create, params}.to change { User.all.length }.by(0)
    end

     it "does not create a new user when password is not confirmed correctly "  do
      params = {"user" => {"name"=>"Ben", "email"=>"ben@test.de", "email_confirmation"=>"ben@test.de", "password"=>"1q1q1q1q", "password_confirmation"=>"1q1q1q1"}}

      expect { post :create, params}.to change { User.all.length }.by(0)
    end


  end