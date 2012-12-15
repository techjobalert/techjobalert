require 'spec_helper'

describe "alert_keywords/index" do
  before(:each) do
    assign(:alert_keywords, [
      stub_model(AlertKeyword,
        :value => "Value"
      ),
      stub_model(AlertKeyword,
        :value => "Value"
      )
    ])
  end

  it "renders a list of alert_keywords" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
