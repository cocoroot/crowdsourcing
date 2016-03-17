require 'rails_helper'

RSpec.describe "creators/index", type: :view do
  before(:each) do
    assign(:creators, [
      Creator.create!(
        :user_id => 1,
        :skill => "Skill",
        :body => "Body"
      ),
      Creator.create!(
        :user_id => 1,
        :skill => "Skill",
        :body => "Body"
      )
    ])
  end

  it "renders a list of creators" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Skill".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
