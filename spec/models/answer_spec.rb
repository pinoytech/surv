require "rails_helper"

describe Answer do
  it { should belong_to(:question)}
  it { should belong_to(:response)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:answer)).to be_valid
  end
end
