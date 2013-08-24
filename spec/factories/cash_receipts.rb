# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cash_receipt do
    date "2013-08-22"
    observations "MyText"
    state false
    retention "MyString"
    customer "MyString"
    concept "MyString"
    movement_number "MyString"
    value "MyString"
    payment nil
    bank_origin nil
    destination_bank nil
  end
end
