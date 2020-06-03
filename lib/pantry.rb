class Pantry
  attr_reader :stock

  def initialize()
    @stock = {}
  end

  def stock_check(ingredient)
    @stock.count(ingredient)
  end
end
