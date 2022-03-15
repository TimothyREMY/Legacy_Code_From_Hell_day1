class Sandwich < Snack
  def initialize(*args)
    @ingredients = []
    args.each do |arg|
      @ingredients << Ingredient.new(arg)
    end
  end

  attr_reader :ingredients

  def taste
    "delicious"
  end

  def pain_point
    @ingredients.include('tomatoe') ? 'tomatoes try to run away on each bite' : ''
  end

  def shareable?
    'With difficulty'
  end

  def add_ingredient(ingredient)
    ingredients << ingredient if ingredient.is_a? Ingredient
  end
end

