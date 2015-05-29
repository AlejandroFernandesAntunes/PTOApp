require 'rails_helper'

RSpec.describe "reports/edit", :type => :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :rate => 1,
      :body => "MyText",
      :description => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input#report_rate[name=?]", "report[rate]"

      assert_select "textarea#report_body[name=?]", "report[body]"

      assert_select "input#report_description[name=?]", "report[description]"
    end
  end
end
