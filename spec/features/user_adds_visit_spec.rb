require 'spec_helper'

feature 'User adds a visit for one of his/her pets' do
  let!(:user){ FactoryGirl.build(:user) }
  let!(:pet){ FactoryGirl.build(:pet) }
  # let!(:visit){ FactoryGirl.build(:visit) }

  scenario 'User enters a valid visit in past' do
    user.save!
    pet.user_id = user.id
    pet.save!
    sign_in_as(user)
    visit root_path
    click_on 'Add a Visit'
    fill_in 'Name', with: 'Example Visit'
    fill_in 'Description', with: 'Example Description'
    fill_in 'Appointment date', with: '23 January, 2014'
    fill_in 'Appointment time', with: '2:00 AM'
    click_on 'Create Visit'

    expect(page).to have_content("Your Pets")

    click_on "Visits"

    expect(page).to have_content('Example Visit')
  end

  # scenario 'User enters a valid visit in future' do
  #   user.save!
  #   pet.user_id = user.id
  #   pet.save!
  #   visit.pet_id = pet.id
  #   visit.save!
  #   sign_in_as(user)
  #   visit root_path

  #   expect(page).to have_content(visit.name)

  #   click_on "Visits"

  #   expect(page).to have_content(visit.name)
  # end

  scenario 'User enters an invalid visit' do
    user.save!
    pet.user_id = user.id
    pet.save!
    sign_in_as(user)
    visit root_path
    click_on 'Add a Visit'
    click_on 'Create Visit'

    expect(page).to have_content("can't be blank")
  end




end
