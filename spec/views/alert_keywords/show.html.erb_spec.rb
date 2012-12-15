require 'spec_helper'

describe "alert_keywords/show" do
  before(:each) do
    @alert_keyword = assign(:alert_keyword, stub_model(AlertKeyword,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
