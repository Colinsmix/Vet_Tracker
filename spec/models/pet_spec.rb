require 'spec_helper'

describe Pet do
  it { should belong_to :user }
  it { should belong_to :type }
  it { should belong_to :breed }

  it { should validate_presence_of :name }
  it { should validate_presence_of :type_id }

  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:pet)
    end

    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
    
  end






end
