# Assignment: Wizard, Ninja, Samurai

# We will be creating three different classes that all inherit from the Human class we created.
# Create a Wizard class that inherits from the Human class.
# Next, let's create a Ninja class.
# Now, let's create the Samurai class

require_relative 'wizard'
require_relative 'ninja'
require_relative 'samurai'

wiz = Wizard.new
nin = Ninja.new
sam = Samurai.new

# Wizard should have a default health of 50 and intelligence of 25

puts wiz.health # 50
puts wiz.intelligence # 25

# Wizard should have a method called heal, which when invoked, heals the Wizard by 10

wiz.heal
puts wiz.health # 60

# Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20

puts wiz.fireball(wiz) # true
puts wiz.health # 60-20=40

# Ninja should have a default stealth of 175

puts nin.stealth # 175

# Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10

nin.steal(wiz)
puts wiz.health # 40-10=30
puts nin.health # 100+10=110

# Ninja should have a get_away method which, when invoked, decreases its health by 15

nin.get_away
puts nin.health # 110-15=95

# Samurai should have a default health of 200

puts sam.health # 200
nin.steal(sam)
puts sam.health # 200-10=190

# Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0

sam.death_blow(nin)
puts nin.health # 0

# Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health

sam.meditate
puts sam.health # 200

# Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are

mau = Samurai.new
puts sam.how_many