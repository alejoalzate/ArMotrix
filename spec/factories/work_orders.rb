# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_order do
    document nil
    address "MyString"
    plate "MyString"
    phone "MyString"
    movil "MyString"
    brand "MyString"
    date_received "2013-08-22"
    type ""
    delivery_date "2013-08-22"
    model "MyString"
    color "MyString"
    mileage "MyString"
    expiration_date "2013-08-22"
    vehicle "MyString"
    diamond "MyString"
    state false
    inventory nil
    total_labor "MyString"
    parts_total_value "MyString"
    client_feedback "MyText"
  end
end
