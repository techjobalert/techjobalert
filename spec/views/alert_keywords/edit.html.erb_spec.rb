require 'spec_helper'

describe "alert_keywords/edit" do
  before(:each) do
    @alert_keyword = assign(:alert_keyword, stub_model(AlertKeyword,
      :value => "MyString"
    ))
  end

  it "renders the edit alert_keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alert_keywords_path(@alert_keyword), :method => "post" do
      assert_select "input#alert_keyword_value", :name => "alert_keyword[value]"
    end
  end
end
