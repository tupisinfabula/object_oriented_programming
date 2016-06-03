class Rover

# access to the variables initialized
attr_accessor :x, :y, :direction

  # initialize the variables
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction

    #attr_accessor :height, :weight

    # puts "What is the size of the plateau? Give me two numbers"
    #   @size = gets.chomp
    #   size_array = @size.split(" ")
    #   size_x = size_array[0]
    #   size_y = size_array[1]
    #   return size_x + " " + size_y

    puts "Where you want start?Give me two numbers and one coordinate"
      @position_first = gets.chomp
      position_first_array = @position_first.split(" ")
      @x = position_first_array[0]
      @y = position_first_array[1]
      @direction = position_first_array[2]

      return @x + " " + @y + " " + @direction
    #
    # puts "Give me the combination of Move and Turn"
    #   @combination_first = gets.chomp
    #   combination_first_array = @combination_first.split(" ")
    #   combination_first_array.map do |i|
    #     if (i == 'M')
    #
    #     elsif (i == "M")
    #       turn(choice_turn)
    #     else
    #       turn(choice_turn)
    #   end

    #
    # puts "Where you want start?"
    #   @position_second = gets.chomp
    #
    # puts "Give me the combination of Move and Turn"
    #   @combination_second = gets.chomp

  end
  #
  # def turn(choice_turn)
  #
  #   if (choice_turn == 'L' && @direction == 'N')
  #     @direction = 'W'
  #   elsif (choice_turn == 'L' && @direction == 'E')
  #     @direction = 'N'
  #   elsif (choice_turn == 'L' && @direction == 'S')
  #     @direction = 'W'
  #   else
  #     @direction = 'N'
  #   end
  #
  #   if (choice_turn == 'R' && @direction == 'N')
  #     @direction = 'E'
  #   elsif (choice_turn == 'R' && @direction == 'E')
  #     @direction = 'S'
  #   elsif (choice_turn == 'R' && @direction == 'S')
  #     @direction = 'E'
  #   else
  #     @direction = 'S'
  #   end
  #
  #   # print the actual value of direction
  #   return @direction
  #
  # end
  #
  # def move(change_position)
  #
  #   # case @direction
  #   # when 'N'
  #   #     @y += 1
  #   # when 'S'
  #   #     @y -= 1
  #   # when 'E'
  #   #     @x += 1
  #   # else
  #   #     @x -= 1
  #   # end
  #   #
  #   # puts "the position is #{@x},#{@y}"
  # end



end

# Create an instance of Rover
#rover = Rover.new(3, 4, 'N')
