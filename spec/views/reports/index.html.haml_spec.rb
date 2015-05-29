require 'rails_helper'

RSpec.describe "reports/index", :type => :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :rate => 1,
        :body => "MyText",
        :description => "Description"
      ),
      Report.create!(
        :rate => 1,
        :body => "MyText",
        :description => "Description"
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
