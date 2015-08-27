require 'spec_helper'

describe "libraries/new" do
  before(:each) do
    assign(:library, stub_model(Library,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new library form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", libraries_path, "post" do
      assert_select "input#library_title[name=?]", "library[title]"
    end
  end
end
