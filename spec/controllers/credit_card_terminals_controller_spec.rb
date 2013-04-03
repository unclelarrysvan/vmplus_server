require 'spec_helper'

describe CreditCardTerminalsController do
  def valid_attributes
    { "name" => "MyString" }
  end

  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all credit_card_terminals as @credit_card_terminals" do
      credit_card_terminal = CreditCardTerminal.create! valid_attributes
      get :index, {}, valid_session
      assigns(:credit_card_terminals).should eq([credit_card_terminal])
    end
  end

  describe "GET show" do
    it "assigns the requested credit_card_terminal as @credit_card_terminal" do
      credit_card_terminal = CreditCardTerminal.create! valid_attributes
      get :show, {:id => credit_card_terminal.to_param}, valid_session
      assigns(:credit_card_terminal).should eq(credit_card_terminal)
    end
  end

  describe "GET new" do
    it "assigns a new credit_card_terminal as @credit_card_terminal" do
      get :new, {}, valid_session
      assigns(:credit_card_terminal).should be_a_new(CreditCardTerminal)
    end
  end

  describe "GET edit" do
    it "assigns the requested credit_card_terminal as @credit_card_terminal" do
      credit_card_terminal = CreditCardTerminal.create! valid_attributes
      get :edit, {:id => credit_card_terminal.to_param}, valid_session
      assigns(:credit_card_terminal).should eq(credit_card_terminal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CreditCardTerminal" do
        expect {
          post :create, {:credit_card_terminal => valid_attributes}, valid_session
        }.to change(CreditCardTerminal, :count).by(1)
      end

      it "assigns a newly created credit_card_terminal as @credit_card_terminal" do
        post :create, {:credit_card_terminal => valid_attributes}, valid_session
        assigns(:credit_card_terminal).should be_a(CreditCardTerminal)
        assigns(:credit_card_terminal).should be_persisted
      end

      it "redirects to the created credit_card_terminal" do
        post :create, {:credit_card_terminal => valid_attributes}, valid_session
        response.should redirect_to(CreditCardTerminal.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved credit_card_terminal as @credit_card_terminal" do
        # Trigger the behavior that occurs when invalid params are submitted
        CreditCardTerminal.any_instance.stub(:save).and_return(false)
        post :create, {:credit_card_terminal => { "name" => "invalid value" }}, valid_session
        assigns(:credit_card_terminal).should be_a_new(CreditCardTerminal)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CreditCardTerminal.any_instance.stub(:save).and_return(false)
        post :create, {:credit_card_terminal => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested credit_card_terminal" do
        credit_card_terminal = CreditCardTerminal.create! valid_attributes
        # Assuming there are no other credit_card_terminals in the database, this
        # specifies that the CreditCardTerminal created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CreditCardTerminal.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => credit_card_terminal.to_param, :credit_card_terminal => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested credit_card_terminal as @credit_card_terminal" do
        credit_card_terminal = CreditCardTerminal.create! valid_attributes
        put :update, {:id => credit_card_terminal.to_param, :credit_card_terminal => valid_attributes}, valid_session
        assigns(:credit_card_terminal).should eq(credit_card_terminal)
      end

      it "redirects to the credit_card_terminal" do
        credit_card_terminal = CreditCardTerminal.create! valid_attributes
        put :update, {:id => credit_card_terminal.to_param, :credit_card_terminal => valid_attributes}, valid_session
        response.should redirect_to(credit_card_terminal)
      end
    end

    describe "with invalid params" do
      it "assigns the credit_card_terminal as @credit_card_terminal" do
        credit_card_terminal = CreditCardTerminal.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CreditCardTerminal.any_instance.stub(:save).and_return(false)
        put :update, {:id => credit_card_terminal.to_param, :credit_card_terminal => { "name" => "invalid value" }}, valid_session
        assigns(:credit_card_terminal).should eq(credit_card_terminal)
      end

      it "re-renders the 'edit' template" do
        credit_card_terminal = CreditCardTerminal.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CreditCardTerminal.any_instance.stub(:save).and_return(false)
        put :update, {:id => credit_card_terminal.to_param, :credit_card_terminal => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested credit_card_terminal" do
      credit_card_terminal = CreditCardTerminal.create! valid_attributes
      expect {
        delete :destroy, {:id => credit_card_terminal.to_param}, valid_session
      }.to change(CreditCardTerminal, :count).by(-1)
    end

    it "redirects to the credit_card_terminals list" do
      credit_card_terminal = CreditCardTerminal.create! valid_attributes
      delete :destroy, {:id => credit_card_terminal.to_param}, valid_session
      response.should redirect_to(credit_card_terminals_url)
    end
  end

end
