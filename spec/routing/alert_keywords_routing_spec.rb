require "spec_helper"

describe AlertKeywordsController do
  describe "routing" do

    it "routes to #index" do
      get("/alert_keywords").should route_to("alert_keywords#index")
    end

    it "routes to #new" do
      get("/alert_keywords/new").should route_to("alert_keywords#new")
    end

    it "routes to #show" do
      get("/alert_keywords/1").should route_to("alert_keywords#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alert_keywords/1/edit").should route_to("alert_keywords#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alert_keywords").should route_to("alert_keywords#create")
    end

    it "routes to #update" do
      put("/alert_keywords/1").should route_to("alert_keywords#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alert_keywords/1").should route_to("alert_keywords#destroy", :id => "1")
    end

  end
end
