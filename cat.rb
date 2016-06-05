class Cat

# initialize the instance variable
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

# Calculate meal time
  def eats_at
    if (@meal_time > 11)
    puts "#{@meal_time} AM"
    else
      puts "#{@meal_time} PM"
    end
  end

# Return the string with name and preferred_food
  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end

end

# Create the instance
bill = Cat.new("Bill", "Meat", 12)
cindy = Cat.new("Cindy", "Fish", 10)

# Call the method on the instances
puts bill.meow
puts cindy.meow
