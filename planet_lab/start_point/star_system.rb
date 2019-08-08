class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    planet_names = @planets.map { |planet| planet.name}
    #  return planet_names
  end

  def get_planet_by_name(planet_name)
    for planet in @planets
      if planet.name == planet_name
        return planet
      end
    end
  end

  #find the planet in planets with the largest diameter.
  def get_largest_planet()
    planet_diameters = @planets.map { |planet| planet.diameter}
    max_diameter = planet_diameters.max
    for planet in @planets
      if planet.diameter == max_diameter
        return planet
      end
    end
  end

  def get_smallest_planet
    planet_diameters = @planets.map { |planet| planet.diameter}
    min_diameter = planet_diameters.min
    for planet in @planets
      if planet.diameter == min_diameter
        return planet
      end
    end
  end

  def get_planets_with_no_moons
    planets_with_no_moons = []
    @planets.each {|planet| planets_with_no_moons << planet if planet.number_of_moons == 0}
    return planets_with_no_moons
  end

  def get_planets_with_more_moons(number_of_moons)
    planets = []
    @planets.each {|planet| planets << planet.name if planet.number_of_moons > 4}
    return planets
  end

  def get_number_of_planets_closer_than(distance)
    near_planets = []
    @planets.each {|planet| near_planets << planet.name if planet.distance_from_sun < 1000}
    return near_planets.count
  end

  def get_total_number_of_moons
    moons_of_every_planet = @planets.map { |planet| planet.number_of_moons }
    moons_of_every_planet.reduce {|sum, number| sum + number}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    sorted_planets = @planets.sort_by {|planet| planet.distance_from_sun}
    sorted_planets.map { |planet| planet.name }
  end

  def get_planet_names_sorted_by_size_decreasing
    sorted_planets = @planets.sort_by {|planet| -planet.diameter}
    sorted_planets.map { |planet| planet.name }
  end

end
