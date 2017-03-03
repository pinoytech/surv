require "rails_helper"

describe Response do
  it { should belong_to(:respondent)}
  it { should belong_to(:feedback)}
  it { should have_many(:answers).dependent(:destroy)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:response)).to be_valid
  end

  let(:response) {FactoryGirl.build(:response)}

  describe "allows me to create a response" do
    it "without a name" do
      response.respondent.name = nil
      expect(response).to be_valid
    end
    it "with a name" do
      expect(response).to be_valid
    end
  end
end
