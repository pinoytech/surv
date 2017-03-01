require "rails_helper"

describe Feedback do
  it { should have_many(:questions)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:feedback)).to be_valid
  end
end
