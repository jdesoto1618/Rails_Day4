require 'rails_helper'

RSpec.feature "CarFunctions", type: :feature do
  context 'Testing various car functions after creating the car' do
    Steps 'Creating a car' do
      Given 'I have made a car' do #passed the second view
        visit '/info/status'
      end
      Then 'I check the speed is at 0' do
        expect(page).to have_content(0)
      end
      Then 'I can increase the speed by 10 when I hit accelerate' do
        click_button 'Accelerate'
      end
      Then 'I can decrease the speed by 5 when I hit brake' do
        click_button 'Brake'
      end
      And 'I can toggle the car lights and off' do
        click_button 'Turn Lights On'
      end
    end
  end
end #Ends RSpec
