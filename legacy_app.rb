require_relative './lib/legacy_module'
require_relative './lib/snack'
require_relative './lib/sandwich'
require_relative './lib/ingredient'


class LegacyCodeFromHellYouNeedToTest
  include LegacyModuleFromHell

  # LegacyCodeFromHellYouNeedToTest
  def initialize
    @my_sandwich = Sandwich.new('ham', 'cheese').add_ingredient(is_it_veggie)
    @your_sandwich = Sandwich.new('salad', 'tomatoe', 'ognon', 'pickle', 'quinoa')
  end

  attr_reader :my_sandwich, :your_sandwich
end
