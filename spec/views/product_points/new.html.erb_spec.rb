require 'rails_helper'

RSpec.describe "product_points/new", type: :view do
  before(:each) do
    assign(:product_point, ProductPoint.new(
      :product_id => 1,
      :user_id => 1
    ))
  end

  it "renders new product_point form" do
    render

    assert_select "form[action=?][method=?]", product_points_path, "post" do

      assert_select "input#product_point_product_id[name=?]", "product_point[product_id]"

      assert_select "input#product_point_user_id[name=?]", "product_point[user_id]"
    end
  end
end
