RSpec.feature "Admin Creates Feedback", :type => :request do
  scenario "saves feedback form without adding questions", js: true do
    complete_form
    click_button 'Save Survey'
    expect(page).to have_content("List of Feedbacks")
  end

  scenario "saves feedback form and adding a custom question", js: true do
    complete_form
    find(:css, '.custom_question').set(Faker::Lorem.sentence(3, true))
    click_button 'Save Survey'
    expect(page).to have_content("List of Feedbacks")
  end
end
