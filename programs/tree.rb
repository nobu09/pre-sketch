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
  
  triangle($xSlide * 4.5, $ySlide * 0, $xSlide * 4, $ySlide * 1, $xSlide * 5, $ySlide * 1)

  triangle($xSlide * 4, $ySlide * 1, $xSlide * 3.5, $ySlide * 2, $xSlide * 4.5, $ySlide * 2)
  triangle($xSlide * 5, $ySlide * 1, $xSlide * 4.5, $ySlide * 2, $xSlide * 5.5, $ySlide * 2)
end
