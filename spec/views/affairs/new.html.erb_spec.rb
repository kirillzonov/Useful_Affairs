require 'spec_helper'

describe "affairs/new.html.erb" do
  before(:each) do
    assign(:affair, stub_model(Affair,
      :shortname => "MyString",
      :description => "MyText",
      :user => nil,
      :category => nil
    ).as_new_record)
  end

  it "renders new affair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => affairs_path, :method => "post" do
      assert_select "input#affair_shortname", :name => "affair[shortname]"
      assert_select "textarea#affair_description", :name => "affair[description]"
      assert_select "input#affair_user", :name => "affair[user]"
      assert_select "input#affair_category", :name => "affair[category]"
    end
  end
end
