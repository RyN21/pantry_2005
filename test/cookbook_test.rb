require 'minitest/autorun'
require 'minitest/pride'
require './lib/cookbook'
require './lib/recipe'
require './lib/ingredient'


class CookBookTest < Minitest::Test
  def setup
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  def test_it_exists_and_has_attribute
      assert_instance_of CookBook, @cookbook
  end
end
