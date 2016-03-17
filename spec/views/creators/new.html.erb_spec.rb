require 'rails_helper'

RSpec.describe "creators/new", type: :view do
  before(:each) do
    assign(:creator, Creator.new(
      :user_id => 1,
      :skill => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new creator form" do
    render

    assert_select "form[action=?][method=?]", creators_path, "post" do

      assert_select "input#creator_user_id[name=?]", "creator[user_id]"

      assert_select "input#creator_skill[name=?]", "creator[skill]"

      assert_select "input#creator_body[name=?]", "creator[body]"
    end
  end
end
