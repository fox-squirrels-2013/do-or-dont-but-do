require 'spec_helper'

describe DodontsController do
  it "index action" do
    get :index
    expect(response.status).to eq 500
  end
end