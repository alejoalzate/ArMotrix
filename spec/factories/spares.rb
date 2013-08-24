# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spare do
    description "MyText"
    cost_center nil
    purchase_price "MyString"
    selling_price "MyString"
    quantity "MyString"
    iva "MyString"
  end
end
