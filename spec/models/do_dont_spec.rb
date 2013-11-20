require 'spec_helper'

describe DoDont do
  let(:dodont) { DoDont.create(content: "Hi Hu" ) }
  it "DoDont do count set to 0" do
    expect(dodont.dos).to eq 0
  end
end

