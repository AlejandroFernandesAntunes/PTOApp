require 'rails_helper'

RSpec.describe "ptos/index", :type => :view do
  before(:each) do
    assign(:ptos, [
      Pto.create!(
        :description => "Description"
      ),
      Pto.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of ptos" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
