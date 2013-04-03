require 'spec_helper'

describe "credit_transactions/edit" do
  before(:each) do
    @credit_transaction = assign(:credit_transaction, stub_model(CreditTransaction,
      :card_number => "MyString",
      :name_on_card => "MyString",
      :amount => "9.99",
      :cvv2_response => "MyString",
      :card_exp => "MyString",
      :approved => false,
      :error_code => "MyString",
      :status => "MyString",
      :transaction_id => "MyText",
      :approval_code => "MyString",
      :credit_card_terminal_id => 1
    ))
  end

  it "renders the edit credit_transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => credit_transactions_path(@credit_transaction), :method => "post" do
      assert_select "input#credit_transaction_card_number", :name => "credit_transaction[card_number]"
      assert_select "input#credit_transaction_name_on_card", :name => "credit_transaction[name_on_card]"
      assert_select "input#credit_transaction_amount", :name => "credit_transaction[amount]"
      assert_select "input#credit_transaction_cvv2_response", :name => "credit_transaction[cvv2_response]"
      assert_select "input#credit_transaction_card_exp", :name => "credit_transaction[card_exp]"
      assert_select "input#credit_transaction_approved", :name => "credit_transaction[approved]"
      assert_select "input#credit_transaction_error_code", :name => "credit_transaction[error_code]"
      assert_select "input#credit_transaction_status", :name => "credit_transaction[status]"
      assert_select "textarea#credit_transaction_transaction_id", :name => "credit_transaction[transaction_id]"
      assert_select "input#credit_transaction_approval_code", :name => "credit_transaction[approval_code]"
      assert_select "input#credit_transaction_credit_card_terminal_id", :name => "credit_transaction[credit_card_terminal_id]"
    end
  end
end
