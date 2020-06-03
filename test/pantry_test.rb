require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'


class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  def test_it_exists_and_has_attribute
    assert_instance_of Pantry, @pantry
    assert_equal ({}), @pantry.stock
  end

  def test_it_checks_stock
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end
end
