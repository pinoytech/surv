require 'rails_helper'

RSpec.describe FeedbacksController, type: :controller do
  let(:admin_user) { FactoryGirl.create(:admin_user) }
  before { sign_in(admin_user) }
  describe 'POST #create' do
    context 'with name attribute' do
      it 'creates a new feedback' do
        expect{
          post :create, feedback: FactoryGirl.attributes_for(:feedback)
        }.to change(Feedback, :count).by(1)
      end
    end
    context 'with no name attribute' do
      it 'creates a new feedback' do
        expect{
          post :create, feedback: FactoryGirl.attributes_for(:feedback, name: nil)
        }.to change(Feedback, :count).by(1)
      end
    end
  end
end
