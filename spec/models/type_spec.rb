require 'spec_helper'

describe Type do
  it { should have_many :pets }
  it { should have_many :breeds }

  it { should validate_presence_of :name }

  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:type)
    end
    
  it { should validate_uniqueness_of :name }
  
  end

end
