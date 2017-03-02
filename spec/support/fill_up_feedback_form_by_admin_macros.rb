module FillUpFeedbackFormbyAdminMacros

  def complete_form
    visit(new_feedback_path)
    within '#new_feedback' do
      fill_in 'Describe Survey Feedback', with: Faker::Lorem.sentence(3, true)
      click_link "Add Additional Question to Survey Feedback"
    end
  end
end
