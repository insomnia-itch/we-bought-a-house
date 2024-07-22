require 'rails_helper'

RSpec.describe "prerequisites/show", type: :view do
  before(:each) do
    assign(:prerequisite, Prerequisite.create!(
      required_project: nil,
      locked_project: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
