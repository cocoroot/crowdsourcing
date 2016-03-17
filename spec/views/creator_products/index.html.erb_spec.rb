require 'rails_helper'

RSpec.describe "creator_products/index", type: :view do
  before(:each) do
    assign(:creator_products, [
      CreatorProduct.create!(
        :product_id => 1,
        :creator_id => 2
      ),
      CreatorProduct.create!(
        :product_id => 1,
        :creator_id => 2
      )
    ])
  end

  it "renders a list of creator_products" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
