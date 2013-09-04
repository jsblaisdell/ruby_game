class Character
    attr_accessor :hp, :str, :magic
    def initialize(hp, str, magic)
        @hp = hp
        @str = str
        @magic = magic
    end
    def attack
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

player = Player.new(100, 20, 20)
orc1 = Enemy.new(30, 10, 0)
orc2 = Enemy.new(30, 10, 0)

puts "You are in a bar. Two orcs are looking at you from across the room. They don't look nice."
puts "Type: [attack] or [leave]"

choice = gets.chomp

if choice == "leave"
    puts "How boring."
elsif choice == "attack"
    orc1.take_damage(player.attack)
else
    puts "You didn't follow the directions."
end