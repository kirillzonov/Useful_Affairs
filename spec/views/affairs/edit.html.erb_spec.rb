require 'spec_helper'

describe "affairs/edit.html.erb" do
  before(:each) do
    @affair = assign(:affair, stub_model(Affair,
      :shortname => "MyString",
      :description => "MyText",
      :user => nil,
      :category => nil
    ))
  end

  it "renders the edit affair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => affair_path(@affair), :method => "post" do
      assert_select "input#affair_shortname", :name => "affair[shortname]"
      assert_select "textarea#affair_description", :name => "affair[description]"
      assert_select "input#affair_user", :name => "affair[user]"
      assert_select "input#affair_category", :name => "affair[category]"
    end
  end
end
