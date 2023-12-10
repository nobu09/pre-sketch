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

  # スタートの座標位置
  xIndex = 4.5
  yIndex = 0

  for yIndex in 0..$split
    # 一列でx座標を横にずらしていく
    xAdjust = 0

    for xCount in 0..yIndex
      triangle($xSlide * (xIndex + xAdjust), $ySlide * yIndex, $xSlide * (xIndex + xAdjust - 0.5), $ySlide * (yIndex + 1), $xSlide * (xIndex + xAdjust + 0.5), $ySlide * (yIndex + 1))
      xAdjust += 1
    end

    xIndex -= 0.5
    yIndex += 1
  end
end
