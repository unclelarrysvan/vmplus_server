require 'spec_helper'

describe "credit_card_terminals/new" do
  before(:each) do
    assign(:credit_card_terminal, stub_model(CreditCardTerminal,
      :name => "MyString",
      :account_id => "MyString",
      :user_id => "MyString",
      :pin => "MyString",
      :demo => false
    ).as_new_record)
  end

  it "renders new credit_card_terminal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => credit_card_terminals_path, :method => "post" do
      assert_select "input#credit_card_terminal_name", :name => "credit_card_terminal[name]"
      assert_select "input#credit_card_terminal_account_id", :name => "credit_card_terminal[account_id]"
      assert_select "input#credit_card_terminal_user_id", :name => "credit_card_terminal[user_id]"
      assert_select "input#credit_card_terminal_pin", :name => "credit_card_terminal[pin]"
      assert_select "input#credit_card_terminal_demo", :name => "credit_card_terminal[demo]"
    end
  end
end
