module FillUpFeedbackFormbyAdminMacros

  def complete_form
    visit(new_feedback_path)
    fill_in 'Describe Survey Feedback', with: Faker::Lorem.sentence(3, true)
    click_link "Add Addtional Question to Survey Feedback"
  end
end
