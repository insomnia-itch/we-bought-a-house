require 'rails_helper'

RSpec.describe "specializations/edit", type: :view do
  let(:specialization) {
    Specialization.create!(
      contractor: nil,
      skill: nil
    )
  }

  before(:each) do
    assign(:specialization, specialization)
  end

  it "renders the edit specialization form" do
    render

    assert_select "form[action=?][method=?]", specialization_path(specialization), "post" do

      assert_select "input[name=?]", "specialization[contractor_id]"

      assert_select "input[name=?]", "specialization[skill_id]"
    end
  end
end
