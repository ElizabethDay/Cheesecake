# == Schema Information
#
# Table name: recipes
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  description  :string(255)
#  instructions :text
#  link         :text
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Recipe do
  before( :each ) do
    @recipe = Recipe.new( valid_recipe )
  end

  it "should be valid" do
    @recipe.should be_valid
  end

  it "must have a name" do
    @recipe.name = ''
    @recipe.should_not be_valid
  end

  def valid_recipe
    { :name => 'Test Recipe', 
      :description => 'This is a test recipe', 
      :instructions => 'Do something, then do something else',
      :link => 'http://www.test-recipe.com/test.html'
    }
  end
end
