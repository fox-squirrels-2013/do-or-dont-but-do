require 'spec_helper'

describe User do

  before :each do
    @user = User.new
    @user.name = 'Beni'
    @user.password = '123'
    @user.email = 'b@g.com'
  end

  it { should have_many(:dodonts).through(:votes)}


  context "model" do
    it "should be an instance of the User class" do
      expect(@user).to be_an_instance_of User
    end
  end

  context "CRUD operations" do
    before :each do
      @user.save
    end

    it "should delete a record from the database" do
      expect{@user.delete}.to change{User.count}.by(-1)
    end

    it "should update a record in the database" do
      expect{
        @user.name = 'Dan'
        @user.save
        }.to change{User.last.name}.from('Beni').to('Dan')
    end

    it "should find a record in the database" do
      expect(User.find(@user.id)).to be_an_instance_of User
    end

    

    

    

  end

  context "validations" do
    it "should validate presence of name" do
      expect{
        @user.name = ''
        @user.save!
        }.to raise_error ActiveRecord::RecordInvalid
    end

    it "should validate presence of password" do
      expect{
        @user.email = ''
        @user.save!
        }.to raise_error ActiveRecord::RecordInvalid
    end

    context "for email" do
      it "should validate presence" do
        expect{
          @user.password = ''
          @user.save!
          }.to raise_error ActiveRecord::RecordInvalid
      end

      it "should validate uniqueness" do
        expect{
          @user.save
          @user2 = User.new
          @user2.name = 'Dan'
          @user2.password = '123'
          @user2.email = @user.email
          @user2.save!
          }.to raise_error ActiveRecord::RecordInvalid
      end
      it "should validate proper format" do
        expect{
          @user.email = 'abc'
          @user.save!
          }.to raise_error ActiveRecord::RecordInvalid
      end

      it "should validate email confirmation" do
        expect{
          @user.email = 'abc'
          @user.save!
          }.to raise_error ActiveRecord::RecordInvalid
      end
    end
  end

end

