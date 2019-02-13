# GalagaInvaders has a coordinate system, with the origin in the upper left,
# x increasing from left to right, and y increasing from top to bottom. For
# example, the upper left corner is (0, 0) and the lower right corner is
# (800, 800).

require_relative 'ship'
require './missile.rb'

class GalagaInvaders

  SCREEN_WIDTH = 800
  SCREEN_HEIGHT = 800

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(SCREEN_WIDTH / 2, HEIGHT - Ship::HEIGHT)
    @missile_manager = MissileManager.new
  end

  def update
    @ship.move
    @missile_manager.move_missiles
  end

  def draw
    @ship.draw
    @missile_manager.draw_missiles
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    case key
    when 'a'
      @ship.move(-5)
    when 'd'
      @ship.move(5)
    when ' '
      @missile_manager.create_missile(@ship.x, @ship.y)
    end
  end

end

GalagaInvaders.new.show
