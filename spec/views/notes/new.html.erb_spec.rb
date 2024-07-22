require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      notable: nil,
      body: "MyText",
      author: nil
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input[name=?]", "note[notable_id]"

      assert_select "textarea[name=?]", "note[body]"

      assert_select "input[name=?]", "note[author_id]"
    end
  end
end
