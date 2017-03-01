require "rails_helper"

describe Question do
  it { should belong_to(:feedback)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:question)).to be_valid
  end
end
