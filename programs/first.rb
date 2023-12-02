# 初期設定用のコード (your setup code here)
def setup
  createCanvas(800, 800)
  background(0, 30, 70)
  blendMode(OVERLAY)
end

# 画面描画用のコード (your draw code here)
def draw
  noLoop
  1000.times do |i|
    if i.even?
      noStroke
      fill(170, 200, 255)
    else
      stroke(170, 200, 255)
      fill(255, 255, 255, 100)
    end
    ellipse(rand(0..800), rand(0..800), 30, 30)
  end
end
