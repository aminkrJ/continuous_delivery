require 'spec_helper'

describe "libraries/edit" do
  before(:each) do
    @library = assign(:library, stub_model(Library,
      :title => "MyString"
    ))
  end

  it "renders the edit library form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", library_path(@library), "post" do
      assert_select "input#library_title[name=?]", "library[title]"
    end
  end
end
