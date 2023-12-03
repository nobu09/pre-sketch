def setup
  $xSlide = 80
  $ySlide = Math::sqrt(($xSlide)**2 - ($xSlide / 2)**2)
  $split = 9
  
  createCanvas($xSlide * $split, $ySlide * $split)
end

def draw
  noLoop
  noStroke
  fill('#000000')
  
  x = 0
  while x < width
    y = 0
    index = 0
    while y < height
      if index.even?
        triangle(x, y + $ySlide, x + $xSlide / 2, y, x + $xSlide, y + $ySlide)
      else
        triangle(x, y, x + $xSlide, y, x + $xSlide / 2, y + $ySlide)
      end
      y += $ySlide
      index += 1
    end
    x += $xSlide
  end
end