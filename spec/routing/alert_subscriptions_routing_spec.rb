require "spec_helper"

describe AlertSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/alert_subscriptions").should route_to("alert_subscriptions#index")
    end

    it "routes to #new" do
      get("/alert_subscriptions/new").should route_to("alert_subscriptions#new")
    end

    it "routes to #show" do
      get("/alert_subscriptions/1").should route_to("alert_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alert_subscriptions/1/edit").should route_to("alert_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alert_subscriptions").should route_to("alert_subscriptions#create")
    end

    it "routes to #update" do
      put("/alert_subscriptions/1").should route_to("alert_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alert_subscriptions/1").should route_to("alert_subscriptions#destroy", :id => "1")
    end

  end
end
