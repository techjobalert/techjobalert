require 'spec_helper'

describe "alert_subscriptions/index" do
  before(:each) do
    assign(:alert_subscriptions, [
      stub_model(AlertSubscription,
        :alert_keyword => nil,
        :frequency => "Frequency",
        :user => nil
      ),
      stub_model(AlertSubscription,
        :alert_keyword => nil,
        :frequency => "Frequency",
        :user => nil
      )
    ])
  end

  it "renders a list of alert_subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Frequency".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
