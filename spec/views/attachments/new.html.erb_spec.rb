require 'rails_helper'

RSpec.describe "attachments/new", type: :view do
  before(:each) do
    assign(:attachment, Attachment.new(
      file_extension: "MyString",
      url: "MyString",
      uploader: nil,
      attachable: nil
    ))
  end

  it "renders new attachment form" do
    render

    assert_select "form[action=?][method=?]", attachments_path, "post" do

      assert_select "input[name=?]", "attachment[file_extension]"

      assert_select "input[name=?]", "attachment[url]"

      assert_select "input[name=?]", "attachment[uploader_id]"

      assert_select "input[name=?]", "attachment[attachable_id]"
    end
  end
end
