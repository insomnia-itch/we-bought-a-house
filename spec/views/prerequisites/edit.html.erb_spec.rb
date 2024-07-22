require 'rails_helper'

RSpec.describe "prerequisites/edit", type: :view do
  let(:prerequisite) {
    Prerequisite.create!(
      required_project: nil,
      locked_project: nil
    )
  }

  before(:each) do
    assign(:prerequisite, prerequisite)
  end

  it "renders the edit prerequisite form" do
    render

    assert_select "form[action=?][method=?]", prerequisite_path(prerequisite), "post" do

      assert_select "input[name=?]", "prerequisite[required_project_id]"

      assert_select "input[name=?]", "prerequisite[locked_project_id]"
    end
  end
end
