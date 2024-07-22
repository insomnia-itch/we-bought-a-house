require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    assign(:note, Note.create!(
      notable: nil,
      body: "MyText",
      author: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end