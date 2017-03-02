RSpec.feature "Admin Creates Feedback", :type => :request do

  let!(:admin_user) { FactoryGirl.create(:admin_user) }
  before do
    login_as(admin_user, scope: :admin_user, run_callbacks: false)
  end

  scenario "saves feedback form without adding questions", js: true do
    complete_form
    within '#new_feedback' do
      find('input[name="commit"]').click
    end
    expect(page).to have_content("List of Feedbacks")
  end

  scenario "saves feedback form and adding a custom question", js: true do
    complete_form
    find(:css, '.custom_question').set(Faker::Lorem.sentence(3, true))
    find('input[name="commit"]').click
    expect(page).to have_content("List of Feedbacks")
  end
end
