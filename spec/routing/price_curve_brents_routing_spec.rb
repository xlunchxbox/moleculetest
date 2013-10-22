require "spec_helper"

describe PriceCurveBrentsController do
  describe "routing" do

    it "routes to #index" do
      get("/price_curve_brents").should route_to("price_curve_brents#index")
    end

    it "routes to #new" do
      get("/price_curve_brents/new").should route_to("price_curve_brents#new")
    end

    it "routes to #show" do
      get("/price_curve_brents/1").should route_to("price_curve_brents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_curve_brents/1/edit").should route_to("price_curve_brents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_curve_brents").should route_to("price_curve_brents#create")
    end

    it "routes to #update" do
      put("/price_curve_brents/1").should route_to("price_curve_brents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_curve_brents/1").should route_to("price_curve_brents#destroy", :id => "1")
    end

  end
end
