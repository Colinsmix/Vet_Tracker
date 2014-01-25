require 'spec_helper'

describe User do
  it { should have_many :pets }
  it { should have_many :visits }
end
