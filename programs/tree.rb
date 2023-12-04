def setup
  $xSlide = 80
  $ySlide = (Math::sqrt(($xSlide)**2 - ($xSlide / 2)**2)).ceil
  $split = 9
  
  createCanvas($xSlide * $split, $ySlide * $split)
end

def draw
  noLoop
  noStroke
  
  x = 0
  y = 0

  for xIndex in 0..width
    y = 0
    
    color = (xIndex == 4) ? "green" : "white"
    fill(color)

    for yIndex in 0..height
      if yIndex.even?
        triangle(x, y + $ySlide, x + $xSlide / 2, y, x + $xSlide, y + $ySlide)
      else
        triangle(x, y, x + $xSlide, y, x + $xSlide / 2, y + $ySlide)
      end
      y += $ySlide
    end
    x += $xSlide
  end
end