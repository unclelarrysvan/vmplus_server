require 'spec_helper'

describe "credit_card_terminals/index" do
  before(:each) do
    assign(:credit_card_terminals, [
      stub_model(CreditCardTerminal,
        :name => "Name",
        :account_id => "Account",
        :user_id => "User",
        :pin => "Pin",
        :demo => false
      ),
      stub_model(CreditCardTerminal,
        :name => "Name",
        :account_id => "Account",
        :user_id => "User",
        :pin => "Pin",
        :demo => false
      )
    ])
  end

  it "renders a list of credit_card_terminals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Pin".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
