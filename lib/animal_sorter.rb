class AnimalSorter
  SEA_ANIMALS = %w(marlin octopus fish)
  LAND_ANIMALS = %w(aardvark cat elephant)

  attr_reader :animals

  def initialize(animals)
    @animals = animals
  end

  def to_a
    animals.partition { |a| SEA_ANIMALS.include? a }
  end
end
