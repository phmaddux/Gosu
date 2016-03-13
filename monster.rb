class Monster
  attr_reader :name, :damage, :health_points
  attr_writer :health_points

  def initialize(name_in, damage_in, health_points_in)
    @name = name_in
    @damage = damage_in
    @health_points = health_points_in
  end

  def list_attributes
    puts "Name is #{name}"
    puts "Damage is #{damage}"
    puts "Health points are #{health_points}"
  end
end

class Fight
  attr_reader :fighter_1, :fighter_2
  def initialize(fighter_1, fighter_2)
    @fighter_1 = fighter_1
    @fighter_2 = fighter_2
  end

  def fight
    puts "Fight 1 is between the #{fighter_1.name} and the #{fighter_2.name}."

    fighters = [fighter_1, fighter_2]
    fighters.each do |fighter|
      puts "#{fighter.name}'s attributes are:"
      fighter.list_attributes
      puts ""
    end
    # puts "#{fighter_1.name}'s attributes are:"
    # fighter_1.list_attributes
    # puts "#{fighter_2.name}'s attributes are:"
    # fighter_2.list_attributes

    puts ""
    puts "This is a match to the death!!!"
    puts "It will go 100 rounds if needed"
    puts ""

    100.times do |round_number|
      puts "Round #{round_number}!"
      # figher 1 hits figther 2 for x damage
      damage = rand(fighter_1.damage)
      puts "#{fighter_1.name} hits #{fighter_2.name} for #{damage} damage"
      fighter_2.health_points = fighter_2.health_points - damage
      # fighter 2 hits fighter 1 for y damage
      damage = rand(fighter_2.damage)
      puts "#{fighter_2.name} hits #{fighter_1.name} for #{damage} damage"
      fighter_1.health_points = fighter_1.health_points - damage
      if (fighter_1.health_points <= 0)
        puts "#{fighter_1.name} Has been massacred by #{fighter_2.name}"
        break
      elsif (fighter_2.health_points <= 0)
        puts "#{fighter_2.name} Has been murderized by #{fighter_1.name}"
        break
      else
        puts "#{fighter_1.name}'s health is at #{fighter_1.health_points}!"
        puts "And #{fighter_2.name}'s health is at #{fighter_2.health_points}!"
      end
      puts ""
      sleep 1
    end
  end
end

monkey_monster = Monster.new("Monkey Man", 10, 100)
drunken_elf = Monster.new("Drunken Elf", 3, 200)
shitty_hero = Monster.new("Shitty Hero", 1, 1)

monkey_vs_elf = Fight.new(monkey_monster, drunken_elf)
monkey_vs_elf.fight
