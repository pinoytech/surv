require "rails_helper"

describe Respondent do
  it { should have_one(:response).dependent(:destroy)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:respondent)).to be_valid
  end
end
