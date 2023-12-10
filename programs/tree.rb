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

  xIndex = 4.5
  yIndex = 0

  for yIndex in 0..$split
    triangle($xSlide * xIndex, $ySlide * yIndex, $xSlide * (xIndex - 0.5), $ySlide * (yIndex + 1), $xSlide * (xIndex + 0.5), $ySlide * (yIndex + 1))

    xIndex -= 0.5
    yIndex += 1
  end
end