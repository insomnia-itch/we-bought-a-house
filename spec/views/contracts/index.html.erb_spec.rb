require 'rails_helper'

RSpec.describe "contracts/index", type: :view do
  before(:each) do
    assign(:contracts, [
      Contract.create!(
        contractor: nil,
        project: nil,
        time_estimate: 2,
        price_estimate: 3,
        running_cost: 4,
        accepted: false
      ),
      Contract.create!(
        contractor: nil,
        project: nil,
        time_estimate: 2,
        price_estimate: 3,
        running_cost: 4,
        accepted: false
      )
    ])
  end

  it "renders a list of contracts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
