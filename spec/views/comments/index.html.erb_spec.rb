require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :product_id => 1,
        :user_id => 2,
        :title => "Title",
        :body => "Body"
      ),
      Comment.create!(
        :product_id => 1,
        :user_id => 2,
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
