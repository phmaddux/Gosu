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
  end

  def draw
    mid_x = @x - @width / 2
    mid_y = @y - @height / 2
    @image.draw(mid_x, mid_y, 1)
  end

end

window = WhackARuby.new
window.show
