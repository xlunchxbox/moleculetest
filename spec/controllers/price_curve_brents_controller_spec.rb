require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PriceCurveBrentsController do

  # This should return the minimal set of attributes required to create a valid
  # PriceCurveBrent. As you add validations to PriceCurveBrent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "month_year" => "2013-10-22 12:15:20" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PriceCurveBrentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all price_curve_brents as @price_curve_brents" do
      price_curve_brent = PriceCurveBrent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:price_curve_brents).should eq([price_curve_brent])
    end
  end

  describe "GET show" do
    # it "assigns the requested price_curve_brent as @price_curve_brent" do
    #   price_curve_brent = PriceCurveBrent.create! valid_attributes
    #   get :show, {:id => price_curve_brent.to_param}, valid_session
    #   assigns(:price_curve_brent).should eq(price_curve_brent)
    # end
  end

  describe "GET new" do
    it "assigns a new price_curve_brent as @price_curve_brent" do
      get :new, {}, valid_session
      assigns(:price_curve_brent).should be_a_new(PriceCurveBrent)
    end
  end

  describe "GET edit" do
    it "assigns the requested price_curve_brent as @price_curve_brent" do
      price_curve_brent = PriceCurveBrent.create! valid_attributes
      get :edit, {:id => price_curve_brent.to_param}, valid_session
      assigns(:price_curve_brent).should eq(price_curve_brent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PriceCurveBrent" do
        expect {
          post :create, {:price_curve_brent => valid_attributes}, valid_session
        }.to change(PriceCurveBrent, :count).by(1)
      end

      it "assigns a newly created price_curve_brent as @price_curve_brent" do
        post :create, {:price_curve_brent => valid_attributes}, valid_session
        assigns(:price_curve_brent).should be_a(PriceCurveBrent)
        assigns(:price_curve_brent).should be_persisted
      end

      it "redirects to the created price_curve_brent" do
        post :create, {:price_curve_brent => valid_attributes}, valid_session
        response.should redirect_to(PriceCurveBrent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved price_curve_brent as @price_curve_brent" do
        # Trigger the behavior that occurs when invalid params are submitted
        PriceCurveBrent.any_instance.stub(:save).and_return(false)
        post :create, {:price_curve_brent => { "month_year" => "invalid value" }}, valid_session
        assigns(:price_curve_brent).should be_a_new(PriceCurveBrent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PriceCurveBrent.any_instance.stub(:save).and_return(false)
        post :create, {:price_curve_brent => { "month_year" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested price_curve_brent" do
        price_curve_brent = PriceCurveBrent.create! valid_attributes
        # Assuming there are no other price_curve_brents in the database, this
        # specifies that the PriceCurveBrent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PriceCurveBrent.any_instance.should_receive(:update).with({ "month_year" => "2013-10-22 12:15:20" })
        put :update, {:id => price_curve_brent.to_param, :price_curve_brent => { "month_year" => "2013-10-22 12:15:20" }}, valid_session
      end

      it "assigns the requested price_curve_brent as @price_curve_brent" do
        price_curve_brent = PriceCurveBrent.create! valid_attributes
        put :update, {:id => price_curve_brent.to_param, :price_curve_brent => valid_attributes}, valid_session
        assigns(:price_curve_brent).should eq(price_curve_brent)
      end

      it "redirects to the price_curve_brent" do
        price_curve_brent = PriceCurveBrent.create! valid_attributes
        put :update, {:id => price_curve_brent.to_param, :price_curve_brent => valid_attributes}, valid_session
        response.should redirect_to(price_curve_brent)
      end
    end

    describe "with invalid params" do
      it "assigns the price_curve_brent as @price_curve_brent" do
        price_curve_brent = PriceCurveBrent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PriceCurveBrent.any_instance.stub(:save).and_return(false)
        put :update, {:id => price_curve_brent.to_param, :price_curve_brent => { "month_year" => "invalid value" }}, valid_session
        assigns(:price_curve_brent).should eq(price_curve_brent)
      end

      it "re-renders the 'edit' template" do
        price_curve_brent = PriceCurveBrent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PriceCurveBrent.any_instance.stub(:save).and_return(false)
        put :update, {:id => price_curve_brent.to_param, :price_curve_brent => { "month_year" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested price_curve_brent" do
      price_curve_brent = PriceCurveBrent.create! valid_attributes
      expect {
        delete :destroy, {:id => price_curve_brent.to_param}, valid_session
      }.to change(PriceCurveBrent, :count).by(-1)
    end

    it "redirects to the price_curve_brents list" do
      price_curve_brent = PriceCurveBrent.create! valid_attributes
      delete :destroy, {:id => price_curve_brent.to_param}, valid_session
      response.should redirect_to(price_curve_brents_url)
    end
  end

end
