class CreditCardTerminal < ActiveRecord::Base
  attr_accessible :account_id, :demo, :name, :pin, :user_id

  def charge_card(card_data, amount, tax = 0.00)
    vm_credentials = VirtualMerchant::Credentials.new(credentials)
    vm_card = VirtualMerchant::CreditCard.new(card_data)
    vm_amount = VirtualMerchant::Amount.new(total: amount, tax: tax)
    puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    puts "vmCreds: #{vm_credentials}"
    puts "Creds: #{credentials}"
    puts "Card: #{vm_card}"
    puts "card_data: #{card_data}"
    puts "amount: #{amount}"
    puts "vmAmount: #{vm_amount}"
    puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    response = generate_response(
      VirtualMerchant.charge(vm_card, vm_amount, vm_credentials), vm_card, amount)
  end

  private
  def credentials
    {account_id: self.account_id ||= 1,
      user_id: self.user_id ||= 1,
      pin: self.pin ||= 1,
      demo: self.demo ||= false}
  end

  def generate_response(vm_response, card, amount)
    if vm_response.approved
      response = basic_response(card, amount).merge approval_response(vm_response)
    else
      response = basic_response(card, amount).merge error_response(vm_response)
    end
  end

  def basic_response(card, amount)
    {card_number: card.blurred_number,
      card_exp: card.expiration,
      name_on_card: card.name_on_card,
      amount: amount}
  end

  def approval_response(vm_response)
    {approved: true,
      approval_code: vm_response.approval_code,
      status: vm_response.result_message,
      transaction_id: vm_response.transaction_id,
      transaction_time: vm_response.transaction_time,
      cvv2_response: vm_response.cvv2_response}
  end

  def error_response(vm_response)
    {approved: false,
      error_code: vm_response.error,
      status: vm_response.result_message}
  end
end
