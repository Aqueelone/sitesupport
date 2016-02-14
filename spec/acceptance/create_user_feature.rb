require 'spec_helper'
require 'rails_helper'

feature 'Create a user', '
  In order to have an awesome ticket
  As an author
  User should create a ticket
  With correct credentals
' do
  include EmailSpec::Helpers
  include EmailSpec::Matchers

  scenario 'Changing Waiting for Customer status' do
    visit '/'
    click_link 'Sign Up'
    within('#new_user') do
      fill_in 'Password', with: 'adminPassword'
      fill_in 'Password confirmation', with: 'adminPassword'
      fill_in 'Email', with: 'user@example.com'
    end
    click_button 'Sign up'
    expect(page).to have_content 'successfully'
    print ActionMailer::Base.deliveries
    expect(ActionMailer::Base.deliveries.size)
  end
end
