# YOUR CODE GOES HERE


class Ingredient
  attr_accessor :quantity, :unit, :item

  def initialize( quantity, unit, item )
    @quantity = quantity.to_f
    @unit = unit
    @item = item
  end

  SAFE_TO_EAT = [ "brussels sprouts", "spinach", "eggs", "milk", "tofu", "seitan", "bell peppers", "quinoa", "kale", "chocolate", "beer", "wine", "whiskey" ]


  def safe_ingreadients
    @safe_ingreadients = SAFE_TO_EAT.include?(@item.downcase)
  end

  def summary
    [quantity, unit, item].join(" ")
  end

end

class Recipe
  attr_reader :name, :instructions, :ingredient

  def initialize(name, instructions , ingredients )
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  @ingredients.safe_ingreadients
  # def is_it_safe?
  #   @ingredients.each do |safe|
  #     if safe.safe_ingreadients == true
  #       "ok to eat"
  #     else
  #       "WARNING!! DONT EAT THIS"
  #     end
  #   end
  # end

  def summary
    summary_list = ""
    summary_list << "Recipe: #{ name }"
    summary_list << "\nIngredient"
    @ingredients.each { |ingredients| summary_list << "\n - #{ ingredients.summary }"}
    summary_list << "\nInstructions"
    @instructions.each_with_index { |direction, index| summary_list << "\n #{ index + 1 }. #{ direction }" }
    summary_list
  end

end



sprouts_ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]
sprouts_instructions = [
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


sprout_recipe = Recipe.new("Roasted Brussels Sprouts", sprouts_instructions, sprouts_ingredients)
# puts sprout_recipe.summary
puts sprout_recipe.is_it_safe?
###work in progress
