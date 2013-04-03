require 'spec_helper'

describe "credit_transactions/show" do
  before(:each) do
    @credit_transaction = assign(:credit_transaction, stub_model(CreditTransaction,
      :card_number => "Card Number",
      :name_on_card => "Name On Card",
      :amount => "9.99",
      :cvv2_response => "Cvv2 Response",
      :card_exp => "Card Exp",
      :approved => false,
      :error_code => "Error Code",
      :status => "Status",
      :transaction_id => "MyText",
      :approval_code => "Approval Code",
      :credit_card_terminal_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #rendered.should match(/Card Number/)
    #rendered.should match(/Name On Card/)
    #rendered.should match(/9.99/)
    #rendered.should match(/Cvv2 Response/)
    #rendered.should match(/Card Exp/)
    #rendered.should match(/false/)
    #rendered.should match(/Error Code/)
    #rendered.should match(/Status/)
    #rendered.should match(/MyText/)
    #rendered.should match(/Approval Code/)
    #rendered.should match(/1/)
  end
end
