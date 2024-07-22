require 'rails_helper'

RSpec.describe "receipts/edit", type: :view do
  let(:receipt) {
    Receipt.create!(
      project: nil,
      price: 1,
      contractor: nil,
      type_of_cost: "MyString"
    )
  }

  before(:each) do
    assign(:receipt, receipt)
  end

  it "renders the edit receipt form" do
    render

    assert_select "form[action=?][method=?]", receipt_path(receipt), "post" do

      assert_select "input[name=?]", "receipt[project_id]"

      assert_select "input[name=?]", "receipt[price]"

      assert_select "input[name=?]", "receipt[contractor_id]"

      assert_select "input[name=?]", "receipt[type_of_cost]"
    end
  end
end
