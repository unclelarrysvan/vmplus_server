# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_transaction do
    card_number "MyString"
    name_on_card "MyString"
    amount "9.99"
    cvv2_response "MyString"
    card_exp "MyString"
    approved false
    error_code "MyString"
    status "MyString"
    transaction_id "MyText"
    transaction_time "2013-04-03 13:29:47"
    approval_code "MyString"
    credit_card_terminal_id 1
  end
end
