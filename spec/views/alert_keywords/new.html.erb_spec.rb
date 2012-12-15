require 'spec_helper'

describe "alert_keywords/new" do
  before(:each) do
    assign(:alert_keyword, stub_model(AlertKeyword,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new alert_keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alert_keywords_path, :method => "post" do
      assert_select "input#alert_keyword_value", :name => "alert_keyword[value]"
    end
  end
end
