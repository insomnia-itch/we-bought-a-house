require 'rails_helper'

RSpec.describe "receipts/index", type: :view do
  before(:each) do
    assign(:receipts, [
      Receipt.create!(
        project: nil,
        price: 2,
        contractor: nil,
        type_of_cost: "Type Of Cost"
      ),
      Receipt.create!(
        project: nil,
        price: 2,
        contractor: nil,
        type_of_cost: "Type Of Cost"
      )
    ])
  end

  it "renders a list of receipts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Type Of Cost".to_s), count: 2
  end
end
