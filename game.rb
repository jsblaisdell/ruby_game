class Character
    attr_accessor :hp, :str, :magic
    def initialize(hp, str, magic)
        @hp = hp
        @str = str
        @magic = magic
    end
    def stab
        rand(10) + @str / 2
    end
    def spell
        rand(10) + @magic / 2
    end
    def take_damage(damage)
        @hp = @hp - damage
        puts "The attack did #{damage} damage!"
    end
end

class Player < Character
end

class Enemy < Character
end

block = "================================================"

player = Player.new(100, 20, 20)
orc1 = Enemy.new(30, 10, 0)
orc2 = Enemy.new(30, 10, 0)

puts block
puts "You're sitting in a dark bar with a pint of mead. Two orcs glare at you from across the room; they don't look nice."
puts "Type: [attack], [cast] or [leave]"
puts block

choice = gets.chomp
puts

if choice == "leave"
    puts "How boring."
elsif choice == "attack"
    orc1.take_damage(player.stab)
    puts "That bastard is down to #{orc1.hp} health!"
elsif choice == "cast"
    orc1.take_damage(player.spell)
    puts "That bastard is down to #{orc1.hp} health!"
else
    puts "You're terrible at following directions. Type one of the words between the square brackets."
end

puts

puts "The first orc attacked you!"
player.take_damage(orc1.stab)
puts
puts "The second orc attacked you!"
player.take_damage(orc2.stab)
puts
puts "you are down to #{player.hp} health!"
