# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visit do
    name 'Example Pet'
    description 'Example Description'
    appointment "#{Time.now + 50}"
  end
end
