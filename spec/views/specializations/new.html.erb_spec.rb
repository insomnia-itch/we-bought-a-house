require 'rails_helper'

RSpec.describe "specializations/new", type: :view do
  before(:each) do
    assign(:specialization, Specialization.new(
      contractor: nil,
      skill: nil
    ))
  end

  it "renders new specialization form" do
    render

    assert_select "form[action=?][method=?]", specializations_path, "post" do

      assert_select "input[name=?]", "specialization[contractor_id]"

      assert_select "input[name=?]", "specialization[skill_id]"
    end
  end
end
