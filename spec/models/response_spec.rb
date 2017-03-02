require "rails_helper"

describe Response do
  it { should belong_to(:respondent)}
  it { should belong_to(:feedback)}
  it { should have_many(:answers)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:response)).to be_valid
  end
end
