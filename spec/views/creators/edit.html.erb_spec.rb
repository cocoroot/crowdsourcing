require 'rails_helper'

RSpec.describe "creators/edit", type: :view do
  before(:each) do
    @creator = assign(:creator, Creator.create!(
      :user_id => 1,
      :skill => "MyString",
      :body => "MyString"
    ))
  end

  it "renders the edit creator form" do
    render

    assert_select "form[action=?][method=?]", creator_path(@creator), "post" do

      assert_select "input#creator_user_id[name=?]", "creator[user_id]"

      assert_select "input#creator_skill[name=?]", "creator[skill]"

      assert_select "input#creator_body[name=?]", "creator[body]"
    end
  end
end
