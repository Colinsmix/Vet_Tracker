require 'spec_helper'

describe Breed do
  it { should have_many :pets }
  it { should belong_to :type }

  it { should validate_presence_of :name }
  it { should validate_presence_of :type_id }

  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:breed)
    end

    it { should validate_uniqueness_of(:name).scoped_to(:type_id) }

  end

end
