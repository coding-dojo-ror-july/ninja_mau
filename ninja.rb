require_relative 'human'
class Ninja < Human
  def initialize
    super
    @stealth = 175 #
  end

  # Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10

  def steal(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      self.health += 10
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
    end

  # Ninja should have a get_away method which, when invoked, decreases its health by 15
  def get_away
    self.health -= 15
  end
end
