class Temperature
  attr_reader :temp

  def initialize(temp)
    @temp = temp
  end

  def status
    case
    when temp < 18
      'cold'
    when temp.between?(18, 21)
      'comfortable'
    when temp > 21
      'hot'
    end
  end
end
