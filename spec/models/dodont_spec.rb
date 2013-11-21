require 'spec_helper'

describe Dodont do
  it "default value of dos is set to 0" do
    dodont = Dodont.new
    dodont.content = "Hi Hu"
    dodont.save
    expect(dodont.dos).to eq 0
  end

  it { should validate_presence_of(:content) }
end


