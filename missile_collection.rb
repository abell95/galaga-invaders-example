class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def shoot_from(shooter)
    missile = Missile.new(shooter.muzzle_location)
    missile.launch(shooter.DEFAULT_VELOCITY)
    add(missile)
  end

end
