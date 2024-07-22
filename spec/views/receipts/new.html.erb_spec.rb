require 'rails_helper'

RSpec.describe "receipts/new", type: :view do
  before(:each) do
    assign(:receipt, Receipt.new(
      project: nil,
      price: 1,
      contractor: nil,
      type_of_cost: "MyString"
    ))
  end

  it "renders new receipt form" do
    render

    assert_select "form[action=?][method=?]", receipts_path, "post" do

      assert_select "input[name=?]", "receipt[project_id]"

      assert_select "input[name=?]", "receipt[price]"

      assert_select "input[name=?]", "receipt[contractor_id]"

      assert_select "input[name=?]", "receipt[type_of_cost]"
    end
  end
end
