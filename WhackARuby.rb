require 'gosu'

class WhackARuby < Gosu::Window

  def initialize
    super(800, 600)
    self.caption = 'Whack the Ruby!'
    @image = Gosu::Image.new('ruby.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
    @visible = 0
  end

  def draw
    mid_x = @x - @width / 2
    mid_y = @y - @height / 2
    if @visible > 0
      @image.draw(mid_x, mid_y, 1)
    end
  end

  def update
    @x += @velocity_x
    @y = @y + @velocity_y
    #These ^^ two lines += and = y +  mean the same thing
    @velocity_x *= -1 if @x + @width / 2 > 800 || @x - @width / 2 < 0
    @velocity_y *= -1 if (@y + @height / 2 > 600) || (@y - @height / 2 < 0)
    @visible -= 1
    @visible = 30 if @visible < -10 && rand < 0.01
  end
end

window = WhackARuby.new
window.show
