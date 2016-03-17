require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :price => "MyString",
      :body => "MyString",
      :point => 1,
      :file_name => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_body[name=?]", "product[body]"

      assert_select "input#product_point[name=?]", "product[point]"

      assert_select "input#product_file_name[name=?]", "product[file_name]"
    end
  end
end
