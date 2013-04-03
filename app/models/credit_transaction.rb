class CreditTransaction < ActiveRecord::Base
  attr_accessible :amount, :approval_code, :approved, :card_exp, :card_number, :credit_card_terminal_id, :cvv2_response, :error_code, :name_on_card, :status, :transaction_id, :transaction_time

  #def create_terminal(account_id, user_id, pin)
  #  terminal = CreditCardTerminal.new()
  #  terminal.account_id = account_id
  #  terminal.user_id = user_id
  #  terminal.pin = pin
  #  terminal
  #end
end
