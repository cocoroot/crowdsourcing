require 'rails_helper'

RSpec.describe "product_points/show", type: :view do
  before(:each) do
    @product_point = assign(:product_point, ProductPoint.create!(
      :product_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
