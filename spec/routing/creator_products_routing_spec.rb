require "rails_helper"

RSpec.describe CreatorProductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/creator_products").to route_to("creator_products#index")
    end

    it "routes to #new" do
      expect(:get => "/creator_products/new").to route_to("creator_products#new")
    end

    it "routes to #show" do
      expect(:get => "/creator_products/1").to route_to("creator_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/creator_products/1/edit").to route_to("creator_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/creator_products").to route_to("creator_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/creator_products/1").to route_to("creator_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/creator_products/1").to route_to("creator_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/creator_products/1").to route_to("creator_products#destroy", :id => "1")
    end

  end
end
