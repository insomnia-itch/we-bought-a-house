require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    assign(:house, House.create!(
      name: "Name",
      address: "Address",
      lister: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(//)
  end
end
