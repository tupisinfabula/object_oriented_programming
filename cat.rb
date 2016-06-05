class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if (@meal_time > 11)
    puts "#{@meal_time} AM"
    else
      puts "#{@meal_time} PM"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end

end

bill = Cat.new("Bill", "Meat", 12)
cindy = Cat.new("Cindy", "Fish", 10)

puts bill.meow
puts cindy.meow
