require "spec_helper"

describe CreditCardTerminalsController do
  describe "routing" do

    it "routes to #index" do
      get("/credit_card_terminals").should route_to("credit_card_terminals#index")
    end

    it "routes to #new" do
      get("/credit_card_terminals/new").should route_to("credit_card_terminals#new")
    end

    it "routes to #show" do
      get("/credit_card_terminals/1").should route_to("credit_card_terminals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/credit_card_terminals/1/edit").should route_to("credit_card_terminals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/credit_card_terminals").should route_to("credit_card_terminals#create")
    end

    it "routes to #update" do
      put("/credit_card_terminals/1").should route_to("credit_card_terminals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/credit_card_terminals/1").should route_to("credit_card_terminals#destroy", :id => "1")
    end

  end
end
