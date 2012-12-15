require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :user => nil,
      :title => "MyString",
      :objective => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_user", :name => "post[user]"
      assert_select "input#post_title", :name => "post[title]"
      assert_select "input#post_objective", :name => "post[objective]"
      assert_select "textarea#post_description", :name => "post[description]"
    end
  end
end