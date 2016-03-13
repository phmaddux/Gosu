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
end

monkey_monster = Monster.new("Monkey Man", 100, 1000)
monkey_monster.list_attributes
puts ""
drunken_elf = Monster.new("Drunken Elf", 3, 10000)
drunken_elf.list_attributes
puts ""
shitty_hero = Monster.new("Shitty Hero", 10000, 1000000)
shitty_hero.list_attributes
shitty_hero.name
puts shitty_hero.health_points
puts ""
