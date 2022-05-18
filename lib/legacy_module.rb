require 'pry'

module LegacyModuleFromHell
  def random_shit
    @toto= Sandwich.new('pickle', 'tomatoe', 'cheese')
  end

  def is_it_veggie
    Ingredient.new('salad')
  end

  def shared
    @toto.shareable?
  end
end
