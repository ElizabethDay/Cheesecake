require 'spec_helper'

describe "recipes/edit.html.erb" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :description => "MyString",
      :instructions => "MyText",
      :link => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "input#recipe_description", :name => "recipe[description]"
      assert_select "textarea#recipe_instructions", :name => "recipe[instructions]"
      assert_select "textarea#recipe_link", :name => "recipe[link]"
    end
  end
end
