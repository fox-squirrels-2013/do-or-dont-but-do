require 'spec_helper'

describe DoDont do
  # let(:dodont) { DoDont.create(content: "Hi Hu" ) }
  it "default value of dos is set to 0" do
    do_dont = DoDont.new
    do_dont.content = "Hi Hu"
    do_dont.save
    expect(do_dont.dos).to eq 0
  end

  it { should validate_presence_of(:content) }
end

