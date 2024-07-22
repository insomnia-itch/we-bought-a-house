require 'rails_helper'

RSpec.describe "specializations/index", type: :view do
  before(:each) do
    assign(:specializations, [
      Specialization.create!(
        contractor: nil,
        skill: nil
      ),
      Specialization.create!(
        contractor: nil,
        skill: nil
      )
    ])
  end

  it "renders a list of specializations" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
