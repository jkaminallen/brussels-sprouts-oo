class Ingredient
  attr_reader :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    return "#{quantity.to_f} #{unit} #{name}"
  end
end

ingredient = Ingredient.new(47.0, 'lb(s)', 'Brussels Sprouts')
puts ingredient.summary

class Recipe
  attr_reader :name, :instructions, :ingredients

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    name = "Name: #{@name} \n"
    name_string = "\n"
    ingredients = "Ingredients"
    ingredients_string = "\n"
    @ingredients.each do |x|
      ingredients_string += "- #{x.summary} \n"
    end
    instructions = "\nInstructions"
    instructions_string = "\n"
    @instructions.each_with_index do |x, y|
      instructions_string += "#{y + 1}. #{x} \n"
    end
    return name + name_string + ingredients + ingredients_string + instructions + instructions_string
  end
end

name = "Roasted Brussels Sprouts"

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
