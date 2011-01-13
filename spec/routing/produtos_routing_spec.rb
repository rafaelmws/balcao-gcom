require "spec_helper"

describe ProdutosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/produtos" }.should route_to(:controller => "produtos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/produtos/new" }.should route_to(:controller => "produtos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/produtos/1" }.should route_to(:controller => "produtos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/produtos/1/edit" }.should route_to(:controller => "produtos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/produtos" }.should route_to(:controller => "produtos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/produtos/1" }.should route_to(:controller => "produtos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/produtos/1" }.should route_to(:controller => "produtos", :action => "destroy", :id => "1")
    end

  end
end
