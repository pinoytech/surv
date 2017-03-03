require "rails_helper"

describe Feedback do
  it { should have_many(:questions).dependent(:destroy)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:feedback)).to be_valid
  end

  let(:feedback) {FactoryGirl.build(:feedback)}

  describe "allows me to create a feedback" do
    it "without a name" do
      expect(feedback).to be_valid
    end
    it "with a name" do
      expect(feedback).to be_valid
    end
  end
end
