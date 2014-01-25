require 'spec_helper'

describe Visit do
  it { should belong_to :pet }

  it { should validate_presence_of :pet_id }
  it { should validate_presence_of :name }
  it { should validate_presence_of :appointment }
end
