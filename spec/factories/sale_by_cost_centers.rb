# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale_by_cost_center do
    from "2013-08-22"
    to "2013-08-22"
    cost_center nil
  end
end
