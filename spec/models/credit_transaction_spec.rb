require 'spec_helper'

describe CreditTransaction do
  it'has a valid factory' do
    expect(create :credit_transaction).to be_valid
  end

  #it 'creates a new terminal' do
  #  thingy = create :credit_transaction
  #  account_id = '123'
  #  user_id = '123'
  #  pin = '123'
  #  expect(thingy.create_terminal(account_id, user_id, pin)).to be_valid
  #end
end
