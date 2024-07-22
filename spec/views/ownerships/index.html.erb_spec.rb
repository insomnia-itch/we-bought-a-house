require 'rails_helper'

RSpec.describe "ownerships/index", type: :view do
  before(:each) do
    assign(:ownerships, [
      Ownership.create!(
        owner: nil,
        house: nil
      ),
      Ownership.create!(
        owner: nil,
        house: nil
      )
    ])
  end

  it "renders a list of ownerships" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
