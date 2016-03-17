require 'rails_helper'

RSpec.describe "product_points/edit", type: :view do
  before(:each) do
    @product_point = assign(:product_point, ProductPoint.create!(
      :product_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit product_point form" do
    render

    assert_select "form[action=?][method=?]", product_point_path(@product_point), "post" do

      assert_select "input#product_point_product_id[name=?]", "product_point[product_id]"

      assert_select "input#product_point_user_id[name=?]", "product_point[user_id]"
    end
  end
end
