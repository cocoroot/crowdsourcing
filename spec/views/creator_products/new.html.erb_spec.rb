require 'rails_helper'

RSpec.describe "creator_products/new", type: :view do
  before(:each) do
    assign(:creator_product, CreatorProduct.new(
      :product_id => 1,
      :creator_id => 1
    ))
  end

  it "renders new creator_product form" do
    render

    assert_select "form[action=?][method=?]", creator_products_path, "post" do

      assert_select "input#creator_product_product_id[name=?]", "creator_product[product_id]"

      assert_select "input#creator_product_creator_id[name=?]", "creator_product[creator_id]"
    end
  end
end
