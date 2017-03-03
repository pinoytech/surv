require "rails_helper"

describe Answer do
  it { should belong_to(:question)}
  it { should belong_to(:response)}
  it "has a valid factory" do
    expect(FactoryGirl.create(:answer)).to be_valid
  end

  let(:answer) {FactoryGirl.build(:answer)}

  describe "creating an answer" do
    it "without an answer text is invalid" do
      answer.answer = nil
      expect(answer).not_to be_valid
    end
    it "with an answer text is valid" do
      expect(answer).to be_valid
    end
  end
end
