require 'spec_helper'

describe CreditCardTerminal do
  it'has a valid factory' do
    expect(create :credit_card_terminal).to be_valid
  end

  it "charges card" do
    new = create :credit_card_terminal, account_id: "002602", demo: true, name: "THISISTHETERMINALOFAGES", pin: "1YURP7", user_id: "002602"
    card = {card_number: "1234567890123456", name_on_card: "Skinny Dave", security_code: "123", expiration: "0513"  }
    amount = 125
    new.charge_card(card, amount)
  end
end
