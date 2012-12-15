require 'spec_helper'

describe "alert_subscriptions/show" do
  before(:each) do
    @alert_subscription = assign(:alert_subscription, stub_model(AlertSubscription,
      :alert_keyword => nil,
      :frequency => "Frequency",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Frequency/)
    rendered.should match(//)
  end
end
