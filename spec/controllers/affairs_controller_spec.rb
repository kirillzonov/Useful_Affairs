require 'spec_helper'

describe AffairsController do

  def mock_affair(stubs={})
    (@mock_affair ||= mock_model(Affair).as_null_object).tap do |affair|
      affair.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all affairs as @affairs" do
      Affair.stub(:all) { [mock_affair] }
      get :index
      assigns(:affairs).should eq([mock_affair])
    end
  end

  describe "GET show" do
    it "assigns the requested affair as @affair" do
      Affair.stub(:find).with("37") { mock_affair }
      get :show, :id => "37"
      assigns(:affair).should be(mock_affair)
    end
  end

  describe "GET new" do
    it "assigns a new affair as @affair" do
      Affair.stub(:new) { mock_affair }
      get :new
      assigns(:affair).should be(mock_affair)
    end
  end

  describe "GET edit" do
    it "assigns the requested affair as @affair" do
      Affair.stub(:find).with("37") { mock_affair }
      get :edit, :id => "37"
      assigns(:affair).should be(mock_affair)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created affair as @affair" do
        Affair.stub(:new).with({'these' => 'params'}) { mock_affair(:save => true) }
        post :create, :affair => {'these' => 'params'}
        assigns(:affair).should be(mock_affair)
      end

      it "redirects to the created affair" do
        Affair.stub(:new) { mock_affair(:save => true) }
        post :create, :affair => {}
        response.should redirect_to(affair_url(mock_affair))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved affair as @affair" do
        Affair.stub(:new).with({'these' => 'params'}) { mock_affair(:save => false) }
        post :create, :affair => {'these' => 'params'}
        assigns(:affair).should be(mock_affair)
      end

      it "re-renders the 'new' template" do
        Affair.stub(:new) { mock_affair(:save => false) }
        post :create, :affair => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested affair" do
        Affair.should_receive(:find).with("37") { mock_affair }
        mock_affair.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :affair => {'these' => 'params'}
      end

      it "assigns the requested affair as @affair" do
        Affair.stub(:find) { mock_affair(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:affair).should be(mock_affair)
      end

      it "redirects to the affair" do
        Affair.stub(:find) { mock_affair(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(affair_url(mock_affair))
      end
    end

    describe "with invalid params" do
      it "assigns the affair as @affair" do
        Affair.stub(:find) { mock_affair(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:affair).should be(mock_affair)
      end

      it "re-renders the 'edit' template" do
        Affair.stub(:find) { mock_affair(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested affair" do
      Affair.should_receive(:find).with("37") { mock_affair }
      mock_affair.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the affairs list" do
      Affair.stub(:find) { mock_affair }
      delete :destroy, :id => "1"
      response.should redirect_to(affairs_url)
    end
  end

end
