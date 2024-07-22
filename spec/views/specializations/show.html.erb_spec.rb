require 'rails_helper'

RSpec.describe "specializations/show", type: :view do
  before(:each) do
    assign(:specialization, Specialization.create!(
      contractor: nil,
      skill: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
