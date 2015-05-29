require 'rails_helper'

RSpec.describe "ptos/edit", :type => :view do
  before(:each) do
    @pto = assign(:pto, Pto.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit pto form" do
    render

    assert_select "form[action=?][method=?]", pto_path(@pto), "post" do

      assert_select "input#pto_description[name=?]", "pto[description]"
    end
  end
end
