require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :title => "MyString",
      :price => "MyString",
      :body => "MyString",
      :point => 1,
      :file_name => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_body[name=?]", "product[body]"

      assert_select "input#product_point[name=?]", "product[point]"

      assert_select "input#product_file_name[name=?]", "product[file_name]"
    end
  end
end
