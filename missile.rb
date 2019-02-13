class MissileManager
  def initialize()
    @missiles = []
  end

  def create_missile(x, y)
    @missiles << Missile.new(x, y)
  end

  def move_missiles
    @missiles.each do |missile|
      missile.move
    end
  end

  def draw_missiles
    @missiles.each do |missile|
      missile.draw
    end
  end
end

class Missile
  def initialize(x, y)
    @x = x
    @y = y
  end

  def move 
    @y -= 10
  end

  def draw
    # magic!!!
  end
end