require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  let(:house) {
    House.create!(
      name: "MyString",
      address: "MyString",
      lister: nil
    )
  }

  before(:each) do
    assign(:house, house)
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(house), "post" do

      assert_select "input[name=?]", "house[name]"

      assert_select "input[name=?]", "house[address]"

      assert_select "input[name=?]", "house[lister_id]"
    end
  end
end
