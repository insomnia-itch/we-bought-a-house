require 'rails_helper'

RSpec.describe "attachments/show", type: :view do
  before(:each) do
    assign(:attachment, Attachment.create!(
      file_extension: "File Extension",
      url: "Url",
      uploader: nil,
      attachable: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/File Extension/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
