class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earning

  def initialize(name, quota, experience, side, earning)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earning = earning
  end



end
