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
  end

  def draw
    mid_x = @x - @width / 2
    mid_y = @y - @height / 2
    @image.draw(mid_x, mid_y, 1)
  end

  def update
    @x += @velocity_x
    @y = @y + @velocity_y
    #These ^^ two lines += and = y +  mean the same thing
    @velocity_x *= -1 if @x + @width / 2 > 800 || @x - @width / 2 < 0

    hits_bottom = (@y + @height / 2 > 600)
    hits_top    = (@y - @height / 2 < 0)
    if hits_bottom || hits_top
      @velocity_y = @velocity_y * -1 #reverse volocity!
    end
  end

end

window = WhackARuby.new
window.show
