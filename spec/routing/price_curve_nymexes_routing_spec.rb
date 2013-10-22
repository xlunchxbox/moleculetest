require "spec_helper"

describe PriceCurveNymexesController do
  describe "routing" do

    it "routes to #index" do
      get("/price_curve_nymexes").should route_to("price_curve_nymexes#index")
    end

    it "routes to #new" do
      get("/price_curve_nymexes/new").should route_to("price_curve_nymexes#new")
    end

    it "routes to #show" do
      get("/price_curve_nymexes/1").should route_to("price_curve_nymexes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_curve_nymexes/1/edit").should route_to("price_curve_nymexes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_curve_nymexes").should route_to("price_curve_nymexes#create")
    end

    it "routes to #update" do
      put("/price_curve_nymexes/1").should route_to("price_curve_nymexes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_curve_nymexes/1").should route_to("price_curve_nymexes#destroy", :id => "1")
    end

  end
end
