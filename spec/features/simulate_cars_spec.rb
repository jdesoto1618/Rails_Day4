require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I fill in the car make and model year' do
        visit '/car/create'
      end
      Then 'I fill in the car make and model year' do
          fill_in 'make', with: 'DeLorean'
          fill_in 'model_year', with: 1985
      end
      And 'I can submit the information' do
        click_button 'Generate This Car'
      end
    end
  end
end
