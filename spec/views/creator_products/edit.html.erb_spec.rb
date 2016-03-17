require 'rails_helper'

RSpec.describe "creator_products/edit", type: :view do
  before(:each) do
    @creator_product = assign(:creator_product, CreatorProduct.create!(
      :product_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit creator_product form" do
    render

    assert_select "form[action=?][method=?]", creator_product_path(@creator_product), "post" do

      assert_select "input#creator_product_product_id[name=?]", "creator_product[product_id]"

      assert_select "input#creator_product_creator_id[name=?]", "creator_product[creator_id]"
    end
  end
end
