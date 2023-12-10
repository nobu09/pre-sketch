def setup
  $xSlide = 80
  $ySlide = (Math::sqrt(($xSlide)**2 - ($xSlide / 2)**2)).ceil
  $split = 9
  
  createCanvas($xSlide * $split, $ySlide * $split)
end

def draw
  noLoop
  noStroke
  
  fill("green")
  
  for i in [0...1]
    triangle(
      $xSlide * xIndex, $ySlide * yIndex,
      $xSlide * (xIndex - 0.5), $ySlide * (yIndex + 1),
      $xSlide * (xIndex + 0.5), $ySlide * (yIndex + 1)
    )
  end
end
