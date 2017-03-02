RSpec.feature "Confirming that Login has happened", :type => :request do

  let!(:admin_user) { FactoryGirl.create(:admin_user) }
  before { login_as(admin_user, scope: :admin_user, run_callbacks: false)}

  scenario "List of Feedbacks can been seen", js: true do
    visit '/feedbacks'
    expect(page).to have_content("List of Feedbacks")
  end
end
