RSpec.feature "User clicks \"Add Additional Question to Survey Feedback\"", :type => :request do

  let!(:admin_user) { FactoryGirl.create(:admin_user) }
  before { login_as(admin_user, scope: :admin_user, run_callbacks: false)}

  scenario "displays a new text box for question", js: true do
    complete_form
    expect(page).to have_selector(".custom_question")
  end
end
