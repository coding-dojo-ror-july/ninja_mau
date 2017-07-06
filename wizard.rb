require_relative 'human'
class Wizard < Human
  def initialize
    super
    @intelligence = 25 #
    @health = 50 #
  end

  def heal
    @health += 10
  end

  def fireball(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
    end
end
