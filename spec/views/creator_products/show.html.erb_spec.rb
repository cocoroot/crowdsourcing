require 'rails_helper'

RSpec.describe "creator_products/show", type: :view do
  before(:each) do
    @creator_product = assign(:creator_product, CreatorProduct.create!(
      :product_id => 1,
      :creator_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
