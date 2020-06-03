class CookBook
  attr_reader :recipes, :ingredients

  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        @ingredients << ingredient.name
      end
    end
    @ingredients.uniq
  end
end
