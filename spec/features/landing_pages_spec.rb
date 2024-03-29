
require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        # save_and_open_page
        expect(page).to have_content("Welcome to Car Simulator")
      end
    end
  end

end
