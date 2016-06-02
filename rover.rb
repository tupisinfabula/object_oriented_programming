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

    attr_accessor :height, :weight

    puts "What is the size of the plateau? Give me two numbers"
      @size = gets.chomp.split

    puts "Where you want start?"
      @position_first = gets.chomp.split

    puts "Give me the combination of Move and Turn"
      @combination_first = gets.chomp.split

    puts "Where you want start?"
      @position_second = gets.chomp.split

    puts "Give me the combination of Move and Turn"
      @combination_second = gets.chomp.split

  end

  def turn(choice_turn)

    if (choice_turn == 'L' && @direction == 'N')
      @direction = 'W'
    elsif (choice_turn == 'L' && @direction == 'E')
      @direction = 'N'
    elsif (choice_turn == 'L' && @direction == 'S')
      @direction = 'W'
    else
      @direction = 'N'
    end

    if (choice_turn == 'R' && @direction == 'N')
      @direction = 'E'
    elsif (choice_turn == 'R' && @direction == 'E')
      @direction = 'S'
    elsif (choice_turn == 'R' && @direction == 'S')
      @direction = 'E'
    else
      @direction = 'S'
    end

    # print the actual value of direction
    puts @direction

  end

  def move(change_position)

    case @direction
    when 'N'
        @y += 1
    when 'S'
        @y -= 1
    when 'E'
        @x += 1
    else
        @x -= 1
    end

    puts "the position is #{@x},#{@y}"
  end



end

# Create an instance of Rover
#rover = Rover.new(3, 4, 'N')
