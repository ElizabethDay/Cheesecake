require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "load chicken" do
    chicken  = Ingredient.find_by_name "Chicken Thighs" 
    assert_not_nil chicken
  end
end
