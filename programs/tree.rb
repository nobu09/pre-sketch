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
    while y < height
      triangle(x, y + $slide, x + $slide / 2, y, x + $slide, y + $slide)
      y += $slide
    end
    x += $slide
  end
end