# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  attr_reader :x, :y

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move(x)
    @x += x
  end

  def draw
    # Ignore this
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
More reusable, easier to debug code than sprawling procedures

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, Dependency Inversion

3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
FALSE!! You never know for sure what you have to make until the client is looking at the prototype.

4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
Exemplary - your code is so good that it inspires imitation from your coworkers.

5. How does applying SRP naturally lead to good design?
When you use the SRP, your code inherently tends to be smaller, more cohesive and more reusable.

=end
