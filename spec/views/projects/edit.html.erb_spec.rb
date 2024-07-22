require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) {
    Project.create!(
      priority: 1,
      running_cost: 1,
      house: nil,
      budget: 1
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[priority]"

      assert_select "input[name=?]", "project[running_cost]"

      assert_select "input[name=?]", "project[house_id]"

      assert_select "input[name=?]", "project[budget]"
    end
  end
end
