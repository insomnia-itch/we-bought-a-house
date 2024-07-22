require 'rails_helper'

RSpec.describe "attachments/index", type: :view do
  before(:each) do
    assign(:attachments, [
      Attachment.create!(
        file_extension: "File Extension",
        url: "Url",
        uploader: nil,
        attachable: nil
      ),
      Attachment.create!(
        file_extension: "File Extension",
        url: "Url",
        uploader: nil,
        attachable: nil
      )
    ])
  end

  it "renders a list of attachments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("File Extension".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
