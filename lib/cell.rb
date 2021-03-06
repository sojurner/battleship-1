class Cell
  attr_reader :coordinate, :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
  end

  def empty?
    @ship ? false : true
  end

  def place_ship ship
    @ship = ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @ship.hit if @ship 
    @fired_upon = true
  end

  def render boolean = false
    if !fired_upon?
      boolean && @ship ? "S" : "."
    elsif @ship  
      @ship.health.zero? ? 'X' : "H"
    else
      'M'
    end
  end
end
