class Rover

# access to the variables initialized
attr_accessor :x, :y, :direction

  def gets_instruction

    puts "What is the size of the plateau? Give me two numbers"
    @size = gets.chomp
    size_array = @size.split(" ")
    size_x = size_array[0]
    size_y = size_array[1]
    @size = size_x + " " + size_y

    puts "Where you want start?Give me two numbers and one coordinate"
    @position_first = gets.chomp
    position_first_array = @position_first.split(" ")
    @x = position_first_array[0].to_i
    @y = position_first_array[1].to_i
    @direction = position_first_array[2]

    read_instruction

  end

  def read_instruction

    puts "Give me the combination of Move and Turn"
    @combination_first = gets.chomp
    combination_first_array = @combination_first.split(" ")
    combination_first_array.each do |i|
      if (i == 'M' || i == 'm')
        move
      elsif (i == "L" || i == 'l')
        turn(i)
      else
        turn(i)
      end
    end

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

  end

  def move

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

  end


end


rover1 = Rover.new
rover1.gets_instruction
puts "New rover position: #{rover1.x} #{rover1.y} #{rover1.direction}"

rover2 = Rover.new
rover2.gets_instruction
puts "New rover position: #{rover2.x} #{rover2.y} #{rover2.direction}"
