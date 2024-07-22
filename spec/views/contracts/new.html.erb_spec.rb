require 'rails_helper'

RSpec.describe "contracts/new", type: :view do
  before(:each) do
    assign(:contract, Contract.new(
      contractor: nil,
      project: nil,
      time_estimate: 1,
      price_estimate: 1,
      running_cost: 1,
      accepted: false
    ))
  end

  it "renders new contract form" do
    render

    assert_select "form[action=?][method=?]", contracts_path, "post" do

      assert_select "input[name=?]", "contract[contractor_id]"

      assert_select "input[name=?]", "contract[project_id]"

      assert_select "input[name=?]", "contract[time_estimate]"

      assert_select "input[name=?]", "contract[price_estimate]"

      assert_select "input[name=?]", "contract[running_cost]"

      assert_select "input[name=?]", "contract[accepted]"
    end
  end
end
