$slide = 80
$split = 9

def setup
  createCanvas($slide * $split, $slide * $split)
end

def draw
  noLoop
  noStroke
  fill('#000000')
  
  x = 0
  while x < width
    y = 0
    loop_index = 1
    while y < height
      if loop_index.even?
        triangle(x, y + $slide, x + $slide / 2, y, x + $slide, y + $slide)
      else
        triangle(x, y, x + $slide, y, x + $slide / 2, y + $slide)
      end
      y += $slide
      loop_index += 1
    end
    x += $slide
  end
end