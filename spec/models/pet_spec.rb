require 'spec_helper'

describe Pet do
  it { should belong_to :user }
  it { should have_many :visits }

  it { should validate_presence_of :name }

  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:pet)
    end

    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }

  end






end
