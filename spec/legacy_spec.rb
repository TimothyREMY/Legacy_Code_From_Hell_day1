require './lib/ingredient'
require './lib/snack'
require './lib/sandwich'
require './lib/ingredient'
require './legacy_app'

########## Partie RSpec ##########
RSpec.describe "Shit load of crap you were told would be 'state of the art' during the interview..." do
  describe Ingredient do
    # # Ingredient
    it 'has a name' do
      expect(Ingredient.new.name).to be_truthy
    end

    # ## Ingredient's name
    it 'is gloubiboulga' do
      expect(Ingredient.new.name).to eq('gloubiboulga')
    end
  end

  it 'or is the given name in argument' do
    expect(Ingredient.new('chocolat').name).to eq('chocolat')
  end

  # # Snack
  it 'is shareable returns true' do
    expect(Snack.new.shareable?).to eq(true)
  end
  it "has no '#brick' method" do
    expect(Snack).not_to respond_to(:brick)
  end
  # # Sandwich
  it 'knows how many have been made so far' do
    expect(Sandwich).to respond_to(:count)
  end
  it 'can tell that no sanwich has been made so far' do
    expect(Sandwich.count).to eq(0)
  end

  # ## Initialize
  it "doesn't fail when no ingredient is given" do
    expect(Sandwich.new).to be_truthy
  end
  it 'Raises an error when loaded with more than 14 ingredients' do
    expect { Sandwich.new('Keso', 'Marmelade', 'Chocolate', 'Nutella', 'Strawberries', 'Avocado', 'Tomatoes', 'Potatoes', 'Ham', 'Chicken breast', 'Fish', 'Fondue cheese', 'Apple', 'Pen', 'Apple', 'Pineapple', 'Pen-Pineapple-Apple-Pen') }.to raise_error('Too many ingredients')
  end

  it 'contains the given ingredients' do
    expect(Sandwich.new('Salad', 'Cheese').ingredients.to_s).to include("Salad", "Cheese")
  end

  # ## Ingredients
  it 'has ingredients from Ingredients class' do
    @ingredient = Ingredient.new('Cheese')
    Sandwich.new(@ingredient, 'Avocado').ingredients.each do |ingredient| 
      expect(ingredient).to be_a(Ingredient)
    end
  end
  


  # ## taste
  it 'returns delicious' do
    expect(Sandwich.new.taste).to include('delicious')
  end

  # ## Pain point
  it 'returns a string when there is at least one tomatoe' do
    expect(Sandwich.new('tomatoe').pain_point).to be_a String
  end

  it 'has no pain point when there is no tomatoe' do
    expect(Sandwich.new('Cheese').pain_point).not_to be_a String 
  end

  # ## shareable
  it 'returns a truthy object' do
    expect(Sandwich.new('Cheese').shareable?).to be_truthy
  end

  it 'returns a string depending on the tomatoe situation' do
    expect(Sandwich.new('tomatoe').shareable?).to be_a String 
  end

  
  # ## add ingredient
  it 'does nothing when ingredient is not from class Ingredient' do
    @sandwich = Sandwich.new('Cheese')
    @sandwich.add_ingredient(@my_sandwich)
    expect(@sandwich.ingredients.count).to eq(1)
  end

  it 'adds the given ingredient when ingredient is from class Ingredient' do
    @sandwich = Sandwich.new('Cheese')
    @ingredient = Ingredient.new(name: 'Potatoe')
    @sandwich.add_ingredient(@ingredient)
    expect(@sandwich.ingredients.count).to eq(2)
  end
  it 'does not accepts a 14th ingredient nor more' do
    @sandwich = Sandwich.new('Sardines', 'Nutella', 'Strawberries', 'Avocado', 'Potatoes', 'Ham', 'Chicken breast', 'Fish', 'Fondue cheese', 'Apple', 'Pen', 'Apple', 'Pineapple', 'Pen-Pineapple-Apple-Pen')
    expect{@sandwich.add_ingredient("Cheese")}.to raise_error('Please no more ingredient !')

  end

  # ## can be eaten
  it 'can be eaten' 

  # # LegacyCodeFromHellYouNeedToTest
  it 'has two different sandwiches' do
    @sandwiches = [LegacyCodeFromHellYouNeedToTest.new.my_sandwich, LegacyCodeFromHellYouNeedToTest.new.your_sandwich]
    expect(@sandwiches.count).to eq(2)
  end


  # ## 'my sandwich'
  it 'has 3 ingredients' do
    @my_sandwich = LegacyCodeFromHellYouNeedToTest.new.my_sandwich
    expect(@my_sandwich.count).to eq(3)
  end

  # ## 'your sandwich'
  it 'has more ingredients than my sandwich' do
    @my_sandwich_count = LegacyCodeFromHellYouNeedToTest.new.my_sandwich.count
    @your_sandwich_count = LegacyCodeFromHellYouNeedToTest.new.your_sandwich.ingredients.count
    expect(@your_sandwich_count).to be>@my_sandwich_count
  end

end

