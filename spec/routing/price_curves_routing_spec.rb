require "spec_helper"

describe PriceCurvesController do
  describe "routing" do

    it "routes to #index" do
      get("/price_curves").should route_to("price_curves#index")
    end

    it "routes to #new" do
      get("/price_curves/new").should route_to("price_curves#new")
    end

    it "routes to #show" do
      get("/price_curves/1").should route_to("price_curves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_curves/1/edit").should route_to("price_curves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_curves").should route_to("price_curves#create")
    end

    it "routes to #update" do
      put("/price_curves/1").should route_to("price_curves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_curves/1").should route_to("price_curves#destroy", :id => "1")
    end

  end
end
