require_relative 'human'
class Samurai < Human
  @@count = 0

  def initialize
    super
    @health = 200 #
    @@count += 1
end
  # Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0

  def death_blow(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
    end

  # Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health

  def meditate
    self.health = 200
  end

  # Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are

  def how_many # self.count
    @@count
  end
end
