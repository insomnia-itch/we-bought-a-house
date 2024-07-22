require 'rails_helper'

RSpec.describe "prerequisites/new", type: :view do
  before(:each) do
    assign(:prerequisite, Prerequisite.new(
      required_project: nil,
      locked_project: nil
    ))
  end

  it "renders new prerequisite form" do
    render

    assert_select "form[action=?][method=?]", prerequisites_path, "post" do

      assert_select "input[name=?]", "prerequisite[required_project_id]"

      assert_select "input[name=?]", "prerequisite[locked_project_id]"
    end
  end
end
