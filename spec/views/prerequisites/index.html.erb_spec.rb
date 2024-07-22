require 'rails_helper'

RSpec.describe "prerequisites/index", type: :view do
  before(:each) do
    assign(:prerequisites, [
      Prerequisite.create!(
        required_project: nil,
        locked_project: nil
      ),
      Prerequisite.create!(
        required_project: nil,
        locked_project: nil
      )
    ])
  end

  it "renders a list of prerequisites" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
