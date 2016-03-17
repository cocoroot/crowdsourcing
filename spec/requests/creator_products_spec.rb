require 'rails_helper'

RSpec.describe "CreatorProducts", type: :request do
  describe "GET /creator_products" do
    it "works! (now write some real specs)" do
      get creator_products_path
      expect(response).to have_http_status(200)
    end
  end
end
