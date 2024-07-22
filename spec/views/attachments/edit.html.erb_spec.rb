require 'rails_helper'

RSpec.describe "attachments/edit", type: :view do
  let(:attachment) {
    Attachment.create!(
      file_extension: "MyString",
      url: "MyString",
      uploader: nil,
      attachable: nil
    )
  }

  before(:each) do
    assign(:attachment, attachment)
  end

  it "renders the edit attachment form" do
    render

    assert_select "form[action=?][method=?]", attachment_path(attachment), "post" do

      assert_select "input[name=?]", "attachment[file_extension]"

      assert_select "input[name=?]", "attachment[url]"

      assert_select "input[name=?]", "attachment[uploader_id]"

      assert_select "input[name=?]", "attachment[attachable_id]"
    end
  end
end
