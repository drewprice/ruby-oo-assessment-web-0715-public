class Parrot
  attr_accessor :phrase

  def initialize(phrase = 'Squawk!')
    @phrase = phrase
  end

  def speak
    puts phrase
  end
end
