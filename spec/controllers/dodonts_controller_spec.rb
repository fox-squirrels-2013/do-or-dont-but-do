require 'spec_helper'

describe DodontsController do
  it "index action" do
    get :index
    expect(response.status).to eq 200
  end
end