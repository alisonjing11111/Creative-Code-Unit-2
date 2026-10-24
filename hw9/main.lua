local img
require("L5")

circleX = {}
circleY = {}
circleSize = {}

function setup()
  size(1000, 800)

  windowTitle('loadImage hw9')
  -- Load the image
  img = loadImage('assets/ocean.jpg')
  -- Draw the image.
  image(img, 0, 0, width, height)

  describe('Image of water.')

  --flowers
  flower(200, 600)
  flower(400, 500)
  fish(500,400)
  greenfish(700,450)
  orangefish(550,500)
  boat(500, 300)

  for i = 1, 10 do
  circleX[i] = random(width)
  circleY[i] = random(height)
  circleSize[i] = random(10, 50)
  end

end

function flower(x, y)
  
  -- petals

  fill(235, 137, 91,150)
  noStroke()

  --petal top,left,bottom,right
  circle(x, y - 15, 20)
  circle(x + 15, y, 20)
  circle(x, y + 15, 20)
  circle(x - 15, y, 20)

  -- center
  fill(255, 204, 0, 200)
  circle(x, y, 18)
end

function orangefish(x,y)

  fill(255, 110, 20, 180)
  noStroke()

  --draw a fish body and tail
  ellipse(x,y, 100,40)
  triangle(x+50, y, x+90, y-20, x+90, y+20)

  --draw a fish eye
  fill(0,130)
  circle(x-30,y,8)

end


function fish(x,y)

  fill(255,255, 224,130)
  noStroke()

  --draw a fish body and tail
  ellipse(x,y, 100,40)
  triangle(x+50, y, x+90, y-20, x+90, y+20)

  --draw a fish eye
  fill(0,130)
  circle(x-30,y,8)
end

function greenfish(x,y)

  fill(180, 228, 214,180)
  noStroke()

  --draw a fish body and tail
  ellipse(x,y, 100,40)
  triangle(x+50, y, x+90, y-20, x+90, y+20)

  --draw a fish eye
  fill(0,130)
  circle(x-30,y,8)

end

function boat(x, y)

  -- boat body
  fill(160, 100, 60, 200)
  noStroke()
  arc(x, y, 300, 70, 0, PI)

  -- mast
  stroke(120, 80, 50, 200)
  strokeWeight(3)
  line(x, y, x, y-80)

  -- sail
  noStroke()
  fill(255, 245, 220, 180)
  triangle(x, y-80, x, y-20, x+35, y-50)

end


--draw some bubbles
function draw()

  stroke(255)
  strokeWeight(1)
  noFill()
  -- Draw all circles
for i = 1, #circleX do
circle(circleX[i], circleY[i], circleSize[i])

  end

-- draw a sun with rays
function draw()

  -- Sun rays
  stroke(255, 240, 150, 120)
  strokeWeight(2)

  line(120, 30, 120, 65)
  line(120, 175, 120, 210)
  line(30, 120, 65, 120)
  line(175, 120, 210, 120)
  line(55, 55, 80, 80)
  line(160, 160, 185, 185)
  line(55, 185, 80, 160)
  line(160, 80, 185, 55)

  -- Sun
  fill(255, 210, 60, 190)
  noStroke()
  circle(120, 120, 80)

  end
end
 


