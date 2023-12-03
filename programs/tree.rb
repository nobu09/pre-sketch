$slide = 80
$split = 10

def setup
  createCanvas($slide * $split, $slide * $split)
end

def draw
  noLoop
  noStroke
  fill('#000000')
  
  x = 0
  while x < width
    triangle(x, $slide, x + $slide / 2, 0, x + $slide, $slide)
    x += $slide
  end
end
