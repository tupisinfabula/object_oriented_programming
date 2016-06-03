class Paperboy

  attr_accessor :quota, :experience
  attr_reader :earning

  def initialize(name,side)
    @name = name
    @side = side
    @experience = 0
    @quota = 50
    @earnings = 0
  end

  # This method return the paperboy's quota for his next delivery
  def quota
    half_experience = @experience / 2
    @quota += half_experience
  end

  def deliver(start_address, end_address)

    #Check if the start_address and end_address are both even/odd numbers
    if (start_address % 2 == 0 && end_address % 2 != 0) || (start_address % 2 != 0 && end_address % 2 == 0)
      puts "Error! You need to digit two even/odd numbers"
    else
      #calculate the numbers of paper delivered
      paper_delivered = (end_address - start_address) / 2
    end
    #update experience
    @experience += paper_delivered

    #return amount
    earned(paper_delivered)
  end

  def earned(paper_delivered)
    #calculate the price for all the paper delivered
    amount = paper_delivered * 0.25

    extra_paper = paper_delivered - @quota

    #calculate the price for extra_paper and add it into amount
    if extra_paper != 0
      extra_calculation = (extra_paper * 0.25).to_f
      amount+= extra_calculation
    else
      puts paper_delivered
    end
    amount -= 2 if amount < @quota
    #update earnings
    @earnings += amount

    #return the value of amount at the end of the day
    return amount

  end

  #return a string about the paperboy's performance
  def report
    puts "I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings}."
  end

end

#bob = Paperboy.new("Bob","even")
