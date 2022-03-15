class Ingredient
  def initialize(name = nil)
    @name = name || 'gloubiboulga'
  end

  attr_reader :name
end
