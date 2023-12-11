def setup
  $xSlide = 10
  $ySlide = 10
  $split = 60
  $colors = ["green", "mediumaquamarine", "lightgreen", "turquoise", "limegreen"]
  
  createCanvas($xSlide * $split, $ySlide * $split)
  background("#223A70")
end

def draw
  noLoop
  noStroke
  
  # スタートの座標位置
  xIndex = $split / 2
  yIndex = 0

  for yIndex in 0..$split
    # 一列でx座標を横にずらしていく
    xAdjust = 0

    for xCount in 0..yIndex
      fill($colors[rand(0..$colors.length-1)])
      triangle($xSlide * (xIndex + xAdjust), $ySlide * yIndex, $xSlide * (xIndex + xAdjust - 0.5), $ySlide * (yIndex + 1), $xSlide * (xIndex + xAdjust + 0.5), $ySlide * (yIndex + 1))
      xAdjust += 1
    end

    xIndex -= 0.5
    yIndex += 1
  end

  # 逆三角形を描いていく
  xIndex = $split / 2 - 0.5
  yIndex = 1

  for yIndex in 1..$split
    xAdjust = 0

    for xCount in 0...yIndex
      fill($colors[rand(0..$colors.length-1)])
      triangle($xSlide * (xIndex + xAdjust), $ySlide * yIndex, $xSlide * (xIndex + xAdjust ++ 0.5), $ySlide * (yIndex + 1), $xSlide *(xIndex + xAdjust + 1), $ySlide * yIndex)
      xAdjust += 1
    end

    xIndex -= 0.5
    yIndex += 1
  end

  fill("white")
  textFont('Courier New')
  textSize(32)
  text("Merry", 40, 50)
  text("Christmas", 40, 100)
end
