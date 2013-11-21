require 'spec_helper'

describe User do
  it "can be created in the database" do
    @user = User.new
    expect(@user).to be_an_instance_of User
  end

  it "validate presence of name, email and password" do
    @user = User.new
    expect{
      @user.name = ''
      @user.save!
    }.to raise_error ActiveRecord::RecordInvalid

    @user = User.new
    expect{
      @user.password = ''
      @user.save!
    }.to raise_error ActiveRecord::RecordInvalid

    @user = User.new
    expect{
      @user.email = ''
      @user.save!
    }.to raise_error ActiveRecord::RecordInvalid

  end
end

