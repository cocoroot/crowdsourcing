require 'rails_helper'

RSpec.describe "product_points/index", type: :view do
  before(:each) do
    assign(:product_points, [
      ProductPoint.create!(
        :product_id => 1,
        :user_id => 2
      ),
      ProductPoint.create!(
        :product_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of product_points" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
