require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  let(:skill) {
    Skill.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:skill, skill)
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(skill), "post" do

      assert_select "input[name=?]", "skill[name]"
    end
  end
end
