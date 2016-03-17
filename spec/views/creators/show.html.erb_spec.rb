require 'rails_helper'

RSpec.describe "creators/show", type: :view do
  before(:each) do
    @creator = assign(:creator, Creator.create!(
      :user_id => 1,
      :skill => "Skill",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Skill/)
    expect(rendered).to match(/Body/)
  end
end
