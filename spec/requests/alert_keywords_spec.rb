require 'spec_helper'

describe "AlertKeywords" do
  describe "GET /alert_keywords" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get alert_keywords_path
      response.status.should be(200)
    end
  end
end
