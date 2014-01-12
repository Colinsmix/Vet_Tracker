FactoryGirl.define do
  factory :user do
    password 'password'
    password_confirmation {|u| u.password}
    sequence(:email) { |n| "example#{n}@example.com" }
  end
end