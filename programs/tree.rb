def setup
  $xSlide = 10
  $ySlide = 10
  $split = 60
  $colors = ["green", "mediumaquamarine", "lightgreen", "turquoise", "limegreen"]
  $snowflakes = []
  
  createCanvas($xSlide * $split, $ySlide * $split)
  background("black")
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
  
  frameRate(30);
end

def draw
  fill("white")
  time = frameCount / 60

  for i in 0..rand(3)
    $snowflakes.push(Snowflake.new)
  end

  for flake in $snowflakes
    flake.update(time)
    flake.display()
  end
end

class Snowflake
  def initialize()
    @posX = 0
    @posY = rand(-50, 0)
    @initialAngle = rand(0, 2 * PI)
    @size = rand(3, 10)
    
    @radius = sqrt(rand(pow(width / 2, 2)));
  end

  def update(time)
    w = 0.6
    angle = w * time + @initialAngle
    @posX = width / 2 + (@radius * sin(angle))
    @posY += pow(@size, 0.5)
  end

  def display
    ellipse(@posX, @posY, @size)
  end
end
