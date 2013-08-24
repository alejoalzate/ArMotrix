# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cost_center do
    cost_center "MyString"
    code "MyString"
    state false
  end
end
