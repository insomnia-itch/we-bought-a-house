require 'rails_helper'

RSpec.describe "contracts/show", type: :view do
  before(:each) do
    assign(:contract, Contract.create!(
      contractor: nil,
      project: nil,
      time_estimate: 2,
      price_estimate: 3,
      running_cost: 4,
      accepted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
  end
end
