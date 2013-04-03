require 'spec_helper'

describe "credit_transactions/index" do
  before(:each) do
    assign(:credit_transactions, [
      stub_model(CreditTransaction,
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
      ),
      stub_model(CreditTransaction,
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
      )
    ])
  end

  it "renders a list of credit_transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Card Number".to_s, :count => 2
    #assert_select "tr>td", :text => "Name On Card".to_s, :count => 2
    #assert_select "tr>td", :text => "9.99".to_s, :count => 2
    #assert_select "tr>td", :text => "Cvv2 Response".to_s, :count => 2
    #assert_select "tr>td", :text => "Card Exp".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => "Error Code".to_s, :count => 2
    #assert_select "tr>td", :text => "Status".to_s, :count => 2
    #assert_select "tr>td", :text => "MyText".to_s, :count => 2
    #assert_select "tr>td", :text => "Approval Code".to_s, :count => 2
    #assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
