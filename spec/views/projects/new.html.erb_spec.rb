require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      priority: 1,
      running_cost: 1,
      house: nil,
      budget: 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[priority]"

      assert_select "input[name=?]", "project[running_cost]"

      assert_select "input[name=?]", "project[house_id]"

      assert_select "input[name=?]", "project[budget]"
    end
  end
end
