require 'spec_helper'

describe "alert_subscriptions/edit" do
  before(:each) do
    @alert_subscription = assign(:alert_subscription, stub_model(AlertSubscription,
      :alert_keyword => nil,
      :frequency => "MyString",
      :user => nil
    ))
  end

  it "renders the edit alert_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alert_subscriptions_path(@alert_subscription), :method => "post" do
      assert_select "input#alert_subscription_alert_keyword", :name => "alert_subscription[alert_keyword]"
      assert_select "input#alert_subscription_frequency", :name => "alert_subscription[frequency]"
      assert_select "input#alert_subscription_user", :name => "alert_subscription[user]"
    end
  end
end
