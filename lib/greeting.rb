class Greeting
  attr_reader :hour

  MORNING   = [6, 11]
  AFTERNOON = [12, 19]
  NIGHT     = [20, 5]

  def initialize(hour)
    @hour = hour
  end

  def say
    case
    when morning?
      'Good Morning!'
    when afternoon?
      'Good Afternoon!'
    when night?
      'Good Night!'
    end
  end

  def morning?
    hour.between?(MORNING.first, MORNING.last)
  end

  def afternoon?
    hour.between?(AFTERNOON.first, AFTERNOON.last)
  end

  def night?
    !hour.between?(NIGHT.last, NIGHT.first)
  end
end
