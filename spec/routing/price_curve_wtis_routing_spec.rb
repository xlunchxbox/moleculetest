require "spec_helper"

describe PriceCurveWtisController do
  describe "routing" do

    it "routes to #index" do
      get("/price_curve_wtis").should route_to("price_curve_wtis#index")
    end

    it "routes to #new" do
      get("/price_curve_wtis/new").should route_to("price_curve_wtis#new")
    end

    it "routes to #show" do
      get("/price_curve_wtis/1").should route_to("price_curve_wtis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_curve_wtis/1/edit").should route_to("price_curve_wtis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_curve_wtis").should route_to("price_curve_wtis#create")
    end

    it "routes to #update" do
      put("/price_curve_wtis/1").should route_to("price_curve_wtis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_curve_wtis/1").should route_to("price_curve_wtis#destroy", :id => "1")
    end

  end
end
