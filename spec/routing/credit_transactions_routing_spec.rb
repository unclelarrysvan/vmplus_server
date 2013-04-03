require "spec_helper"

describe CreditTransactionsController do
  describe "routing" do

    it "routes to #index" do
      get("/credit_transactions").should route_to("credit_transactions#index")
    end

    it "routes to #new" do
      get("/credit_transactions/new").should route_to("credit_transactions#new")
    end

    it "routes to #show" do
      get("/credit_transactions/1").should route_to("credit_transactions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/credit_transactions/1/edit").should route_to("credit_transactions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/credit_transactions").should route_to("credit_transactions#create")
    end

    it "routes to #update" do
      put("/credit_transactions/1").should route_to("credit_transactions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/credit_transactions/1").should route_to("credit_transactions#destroy", :id => "1")
    end

  end
end
