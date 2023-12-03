$slide = 80
$split = 10

def setup
  createCanvas($slide * $split, $slide * $split)
end

def draw
  noLoop
  noStroke
  fill('#000000')
  triangle(0, $slide, $slide / 2, 0, $slide, $slide)
end
