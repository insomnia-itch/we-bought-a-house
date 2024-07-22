require 'rails_helper'

RSpec.describe "receipts/show", type: :view do
  before(:each) do
    assign(:receipt, Receipt.create!(
      project: nil,
      price: 2,
      contractor: nil,
      type_of_cost: "Type Of Cost"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Type Of Cost/)
  end
end
