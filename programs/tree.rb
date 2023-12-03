$maxSize = 600

def setup
  createCanvas($maxSize, $maxSize)
end

def draw
  noLoop
  noStroke
  fill('#000000')
  triangle(0, $maxSize, $maxSize / 2, 0, $maxSize, $maxSize)
end
