require "spec_helper"

describe AffairsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/affairs" }.should route_to(:controller => "affairs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/affairs/new" }.should route_to(:controller => "affairs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/affairs/1" }.should route_to(:controller => "affairs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/affairs/1/edit" }.should route_to(:controller => "affairs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/affairs" }.should route_to(:controller => "affairs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/affairs/1" }.should route_to(:controller => "affairs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/affairs/1" }.should route_to(:controller => "affairs", :action => "destroy", :id => "1")
    end

  end
end
