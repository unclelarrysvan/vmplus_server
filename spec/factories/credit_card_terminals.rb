# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card_terminal do
    name "MyString"
    account_id "MyString"
    user_id "MyString"
    pin "MyString"
    demo false
  end
end
