require 'rails_helper'

RSpec.describe "ownerships/show", type: :view do
  before(:each) do
    assign(:ownership, Ownership.create!(
      owner: nil,
      house: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
