$slide = 80
$split = 10

def setup
  createCanvas($slide * $split, $slide * $split)
  angleMode(DEGREES)
  background(255)
end

def draw
  noLoop
  noStroke
  x = 0
  while x < width
    y = 0
    while y < height
      fill('#444444')
      arc(x, y, $slide * 2, $slide * 2, 0, 90)
      y += $slide
    end
    x += $slide
  end
end
