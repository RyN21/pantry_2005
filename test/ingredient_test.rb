require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'


class IngredientTest < Minitest::Test
  # def setup
  #   @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  # end

  def test_it_exists_and_has_attribute
    assert_instance_of Ingredient, @ingredient
    assert_equal "Cheese", @ingredient.name
    assert_equal "oz", @ingredient.unit
    assert_equal 50, @ingredient.calories
  end

end
