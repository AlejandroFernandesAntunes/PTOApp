require 'rails_helper'

RSpec.describe "reports/new", :type => :view do
  before(:each) do
    assign(:report, Report.new(
      :rate => 1,
      :body => "MyText",
      :description => "MyString"
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "input#report_rate[name=?]", "report[rate]"

      assert_select "textarea#report_body[name=?]", "report[body]"

      assert_select "input#report_description[name=?]", "report[description]"
    end
  end
end
