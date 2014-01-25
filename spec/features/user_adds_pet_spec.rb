require 'spec_helper'


feature 'User enters his/her pet onto the website' do
  let!(:user){ FactoryGirl.build(:user) }

  scenario 'User enters a pet with valid information' do
    user.save!
    sign_in_as(user)
    visit root_path
    click_on 'Add a new Pet!'
    fill_in 'Name', with: 'ExamplePet'
    click_on 'Add Pet!'

    expect(page).to have_content('Your Pets')
    expect(page).to have_content('ExamplePet')
  end

  scenario 'User enters a pet without valid information' do
    user.save!
    sign_in_as(user)
    visit root_path
    click_on 'Add a new Pet!'
    click_on 'Add Pet!'

    expect(page).to have_content("can't be blank")
  end

end
