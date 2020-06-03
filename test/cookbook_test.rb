require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/recipe'
require './lib/ingredient'


class CookBookTest < Minitest::Test
  def setup
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  def test_it_exists_and_has_attribute
      assert_instance_of CookBook, @cookbook
  end

  def test_it_can_add_recipe
    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    assert_equal [@recipe1, @recipe2], @cookbook.recipes
  end

  def test_it_can_find_cookbook_ingredients
    assert_equal ["Cheese", "Macaroni", "Ground Beef", "Bun"], @cookbook.ingredients
  end
end
