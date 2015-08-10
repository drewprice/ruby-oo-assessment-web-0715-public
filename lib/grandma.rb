class Grandma
  def speak_to(phrase)
    if shouting?(phrase)
      'NO, NOT SINCE 1938!'
    else
      'HUH?!  SPEAK UP, SONNY!'
    end
  end

  private

  def shouting?(phrase)
    phrase == phrase.upcase
  end
end
