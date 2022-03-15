

########## Partie RSpec ##########
# RSpec.describe "Shit load of crap you were told would be 'state of the art' during the interview..." do
RSpec.describe Sandwich do
  # Ingredient
  it 'has a name' # eq

  # Snack
  it 'is shareable' # be true

  # Sandwich
  it 'is shareable' # be truthy

  # # Legacy Code
  it 'has three different sandwiches' # equal / be / an_object_equal_to.

  # ## 'my sandwich'
  it 'has 3 ingredients'


  # ## 'your sandwich'
  it 'has more ingredients than my sandwich'

  # ## Any sandwich
  it 'tastes delicious' do # include
    expect(Sandwich.new.taste).to eq('delicious')
  end

end
