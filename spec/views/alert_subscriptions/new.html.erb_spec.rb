require 'spec_helper'

describe "alert_subscriptions/new" do
  before(:each) do
    assign(:alert_subscription, stub_model(AlertSubscription,
      :alert_keyword => nil,
      :frequency => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new alert_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alert_subscriptions_path, :method => "post" do
      assert_select "input#alert_subscription_alert_keyword", :name => "alert_subscription[alert_keyword]"
      assert_select "input#alert_subscription_frequency", :name => "alert_subscription[frequency]"
      assert_select "input#alert_subscription_user", :name => "alert_subscription[user]"
    end
  end
end
