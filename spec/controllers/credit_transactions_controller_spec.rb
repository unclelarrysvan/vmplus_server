require 'spec_helper'
describe CreditTransactionsController do

  #def valid_attributes
  #  { "card_number" => "MyString" }
  #end

  #def valid_session
  #  {}
  #end
  #
  #it 'has a valid factory' do
  #  expect(create :credit_transaction).to be_valid
  #end

  manual_card_data = {
    name_on_card: "Skinny Dave",
    number: "4017410278228162",
    expiration: "0213",
    security_code: "144"}

  account_data = {
    account_id: '002602',
    user_id: '002602',
    pin: '1YURP7',
    demo: true}

  describe "GET index" do
    it "assigns all credit_transactions as @credit_transactions" do
      credit_transaction = create :credit_transaction
      get :index, {}
      assigns(:credit_transactions).should eq([credit_transaction])
    end
  end

  describe "charge_card" do
    #it "gets terminal" do
    #  terminal = create :credit_card_terminal
    #  find = CreditCardTerminal.find(terminal)
    #  find.should eq terminal
    #end

    it "charges card" do
      params = {card_data: manual_card_data, amount: 0.01, account_data: account_data}
      params.merge!(format: :json)
      post :charge_card, params
      CreditTransaction.last.card_number.should eq "40**********8162"
    end
  end

  #it 'creates a new terminal' do
  #  thingy = create :credit_transaction
  #  account_id = '123'
  #  user_id = '123'
  #  pin = '123'
  #  expect (thingy.create_terminal(account_id, user_id, pin)).to be_valid
  #end


  #describe "GET show" do
  #  xit "assigns the requested credit_transaction as @credit_transaction" do
  #    credit_transaction = CreditTransaction.create! valid_attributes
  #    get :show, {:id => credit_transaction.to_param}, valid_session
  #    assigns(:credit_transaction).should eq(credit_transaction)
  #  end
  #end

  #describe "GET new" do
  #  xit "assigns a new credit_transaction as @credit_transaction" do
  #    get :new, {}, valid_session
  #    assigns(:credit_transaction).should be_a_new(CreditTransaction)
  #  end
  #end

  #describe "GET edit" do
  #  xit "assigns the requested credit_transaction as @credit_transaction" do
  #    credit_transaction = CreditTransaction.create! valid_attributes
  #    get :edit, {:id => credit_transaction.to_param}, valid_session
  #    assigns(:credit_transaction).should eq(credit_transaction)
  #  end
  #end

  #describe "POST create" do
  #  describe "with valid params" do
  #    xit "creates a new CreditTransaction" do
  #      expect {
  #        post :create, {:credit_transaction => valid_attributes}, valid_session
  #      }.to change(CreditTransaction, :count).by(1)
  #    end

  #    xit "assigns a newly created credit_transaction as @credit_transaction" do
  #      post :create, {:credit_transaction => valid_attributes}, valid_session
  #      assigns(:credit_transaction).should be_a(CreditTransaction)
  #      assigns(:credit_transaction).should be_persisted
  #    end

  #    xit "redirects to the created credit_transaction" do
  #      post :create, {:credit_transaction => valid_attributes}, valid_session
  #      response.should redirect_to(CreditTransaction.last)
  #    end
  #  end

  #  describe "with invalid params" do
  #    xit "assigns a newly created but unsaved credit_transaction as @credit_transaction" do
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      CreditTransaction.any_instance.stub(:save).and_return(false)
  #      post :create, {:credit_transaction => { "card_number" => "invalid value" }}, valid_session
  #      assigns(:credit_transaction).should be_a_new(CreditTransaction)
  #    end

  #    xit "re-renders the 'new' template" do
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      CreditTransaction.any_instance.stub(:save).and_return(false)
  #      post :create, {:credit_transaction => { "card_number" => "invalid value" }}, valid_session
  #      response.should render_template("new")
  #    end
  #  end
  #end

  #describe "PUT update" do
  #  describe "with valid params" do
  #    xit "updates the requested credit_transaction" do
  #      credit_transaction = CreditTransaction.create! valid_attributes
  #      # Assuming there are no other credit_transactions in the database, this
  #      # specifies that the CreditTransaction created on the previous line
  #      # receives the :update_attributes message with whatever params are
  #      # submitted in the request.
  #      CreditTransaction.any_instance.should_receive(:update_attributes).with({ "card_number" => "MyString" })
  #      put :update, {:id => credit_transaction.to_param, :credit_transaction => { "card_number" => "MyString" }}, valid_session
  #    end

  #    xit "assigns the requested credit_transaction as @credit_transaction" do
  #      credit_transaction = CreditTransaction.create! valid_attributes
  #      put :update, {:id => credit_transaction.to_param, :credit_transaction => valid_attributes}, valid_session
  #      assigns(:credit_transaction).should eq(credit_transaction)
  #    end

  #    xit "redirects to the credit_transaction" do
  #      credit_transaction = CreditTransaction.create! valid_attributes
  #      put :update, {:id => credit_transaction.to_param, :credit_transaction => valid_attributes}, valid_session
  #      response.should redirect_to(credit_transaction)
  #    end
  #  end

  #  describe "with invalid params" do
  #    xit "assigns the credit_transaction as @credit_transaction" do
  #      credit_transaction = CreditTransaction.create! valid_attributes
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      CreditTransaction.any_instance.stub(:save).and_return(false)
  #      put :update, {:id => credit_transaction.to_param, :credit_transaction => { "card_number" => "invalid value" }}, valid_session
  #      assigns(:credit_transaction).should eq(credit_transaction)
  #    end

  #    xit "re-renders the 'edit' template" do
  #      credit_transaction = CreditTransaction.create! valid_attributes
  #      # Trigger the behavior that occurs when invalid params are submitted
  #      CreditTransaction.any_instance.stub(:save).and_return(false)
  #      put :update, {:id => credit_transaction.to_param, :credit_transaction => { "card_number" => "invalid value" }}, valid_session
  #      response.should render_template("edit")
  #    end
  #  end
  #end

  #describe "DELETE destroy" do
  #  xit "destroys the requested credit_transaction" do
  #    credit_transaction = CreditTransaction.create! valid_attributes
  #    expect {
  #      delete :destroy, {:id => credit_transaction.to_param}, valid_session
  #    }.to change(CreditTransaction, :count).by(-1)
  #  end

  #  xit "redirects to the credit_transactions list" do
  #    credit_transaction = CreditTransaction.create! valid_attributes
  #    delete :destroy, {:id => credit_transaction.to_param}, valid_session
  #    response.should redirect_to(credit_transactions_url)
  #  end
  #end

end
