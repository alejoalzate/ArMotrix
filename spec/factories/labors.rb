# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :labor do
    description "MyText"
    cost_center nil
    sale_price "MyString"
    quantity "MyString"
    mechanical nil
    iva "MyString"
    discount "MyString"
  end
end
