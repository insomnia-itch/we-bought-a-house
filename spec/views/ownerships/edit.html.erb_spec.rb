require 'rails_helper'

RSpec.describe "ownerships/edit", type: :view do
  let(:ownership) {
    Ownership.create!(
      owner: nil,
      house: nil
    )
  }

  before(:each) do
    assign(:ownership, ownership)
  end

  it "renders the edit ownership form" do
    render

    assert_select "form[action=?][method=?]", ownership_path(ownership), "post" do

      assert_select "input[name=?]", "ownership[owner_id]"

      assert_select "input[name=?]", "ownership[house_id]"
    end
  end
end
