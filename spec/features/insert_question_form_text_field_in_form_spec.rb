RSpec.feature "User clicks \"Add Addtional Question to Survey Feedback\"", :type => :request do
  scenario "displays a new text box for question", js: true do
    visit(new_feedback_path)
    click_link "Add Addtional Question to Survey Feedback"
    expect(page).to have_selector(".custom_question")
  end
end
