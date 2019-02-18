require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize
    @x = 200
    @y = 200
  end

  def move
  end

  def ordnance_velocity
    10
  end

  def muzzle_location
    Vector(x, bottom_edge)
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
  end

  def fire(missiles)
    missile = Missile.new(x, bottom_edge)
    missile.launch(10)
    missiles.add(missile)
  end

  def bottom_edge
    y + HEIGHT / 2
  end

end

Vector = Struct.new(:x, :y)