class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

# ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
# puts ingredient.summary

class Recipe
  attr_reader :name, :instructions, :ingredients

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts ""
    puts "Instructions"
    instructions.each_with_index do |instruction, index|
      puts "#{index + 1}. #{instruction}"
    end
    puts ""
    puts "Ingredients"
    recipe_string = ""
    ingredients.each do |ingredient|
      recipe_string += "- " + ingredient.summary + "\n"
    end
    recipe_string
  end
end

name = "Roasted Brussels Sprouts"
# Note how below we are creating new Ingredient objects and saving them inside the `ingredients` array. This way we have information about state and behavior for each ingredient that we wouldn't get just by having a string representing it.
ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

recipe = Recipe.new(name, instructions, ingredients)
puts recipe.summary
