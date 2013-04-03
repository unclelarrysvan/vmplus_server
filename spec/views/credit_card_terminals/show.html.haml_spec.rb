require 'spec_helper'

describe "credit_card_terminals/show" do
  before(:each) do
    @credit_card_terminal = assign(:credit_card_terminal, stub_model(CreditCardTerminal,
      :name => "Name",
      :account_id => "Account",
      :user_id => "User",
      :pin => "Pin",
      :demo => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Account/)
    rendered.should match(/User/)
    rendered.should match(/Pin/)
    rendered.should match(/false/)
  end
end
