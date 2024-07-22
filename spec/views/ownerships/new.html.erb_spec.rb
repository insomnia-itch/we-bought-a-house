require 'rails_helper'

RSpec.describe "ownerships/new", type: :view do
  before(:each) do
    assign(:ownership, Ownership.new(
      owner: nil,
      house: nil
    ))
  end

  it "renders new ownership form" do
    render

    assert_select "form[action=?][method=?]", ownerships_path, "post" do

      assert_select "input[name=?]", "ownership[owner_id]"

      assert_select "input[name=?]", "ownership[house_id]"
    end
  end
end
