require 'rails_helper'

RSpec.describe "ptos/new", :type => :view do
  before(:each) do
    assign(:pto, Pto.new(
      :description => "MyString"
    ))
  end

  it "renders new pto form" do
    render

    assert_select "form[action=?][method=?]", ptos_path, "post" do

      assert_select "input#pto_description[name=?]", "pto[description]"
    end
  end
end
