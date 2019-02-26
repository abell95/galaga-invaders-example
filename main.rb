#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.shoot_from(ship)
    end
    if key == 'p'
      missiles.shoot_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?

  Duck typing is a shorthand term for trusting that something will be what it should be
  at runtime rather than doing type checks. "If it walks, talks, looks like a duck..." is the guideline.
  So long as it can satisfy the requested behavior, the interpreter doesn't cause a fuss. Polymorphism
  is the notion that a value can take many forms. Subclasses that inherit and override parent methods is one way
  of achieving this- using a duck type is another.

2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?

  A conditional on the class type or value is the dead giveaway.
  Other hints:
    -- If you have to check if something has a method called "whatever"
    -- If you have to check if something is a certain kind of object to know what method to use
    -- If your method knows anything about the classes that will use it

3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.

  Like everything else, it's just a tool that depends on the situation and the tradeoffs. Using a duck type is not magic, 
  or a silver bullet for every problem. It's there to help you write flexible and expansible code, but relies on you
  to write the interfaces for the duck type properly.

=end
