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

end
