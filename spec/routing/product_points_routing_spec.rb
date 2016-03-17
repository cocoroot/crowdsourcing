require "rails_helper"

RSpec.describe ProductPointsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_points").to route_to("product_points#index")
    end

    it "routes to #new" do
      expect(:get => "/product_points/new").to route_to("product_points#new")
    end

    it "routes to #show" do
      expect(:get => "/product_points/1").to route_to("product_points#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_points/1/edit").to route_to("product_points#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_points").to route_to("product_points#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_points/1").to route_to("product_points#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_points/1").to route_to("product_points#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_points/1").to route_to("product_points#destroy", :id => "1")
    end

  end
end
