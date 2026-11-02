
require("L5")

-- rain drops
circleX = {}
circleY = {}
circleSize = {}

-- leaves
leaves = {
  {x = 150, y = 160, s = 230}, -- 1
  {x = 110, y = 370, s = 220}, -- 2
  {x = 470, y = 130, s = 160}, -- 3
  {x = 700, y = 240, s = 250}, -- 4
  {x = 330, y = 440, s = 280}, -- 5
  {x = 480, y = 500, s = 190}, -- 6
  {x = 670, y = 500, s = 180}, -- 7
  {x = 190, y = 650, s = 270}, -- 8
  {x = 470, y = 730, s = 230}, -- 9
  {x = 720, y = 720, s = 170}, -- 10
  {x = 620, y = 100, s = 190}  -- 11
}

-- leaves movement
move1 = 0
move2 = 0
move3 = 0

speed1 = 0.05
speed2 = -0.03
speed3 = 0.04

-- flowers
flowers = {
  {x = 300, y = 220},
  {x = 190, y = 680},
  {x = 480, y = 540},
  {x = 650, y = 340},
  {x = 130, y = 560}
}

-- flowers movement
flowerMove1 = 0
flowerMove2 = 0
flowerMove3 = 0

flowerSpeed1 = 0.03
flowerSpeed2 = -0.02
flowerSpeed3 = 0.01

-- boat position
boatX = 100
boatY = 100
boatSpeed = random(0.2, 0.5)


function setup()
  size(900,900)

  --title
  windowTitle("A quiet pond")
  describe("A default gray window with the title A quiet pond")

  -- background music
  music = love.audio.newSource("music.mp3", "stream")
  music:setLooping(true)
  music:setVolume(0.3)
  music:play()

  -- create 30 random rain drops
  for i = 1, 30 do
   circleX[i] = random(width)
   circleY[i] = random(height)
   circleSize[i] = random(10, 60)
  end
end


function drawleaves(x, y, s)

  -- leaf shape
  fill(0, 120, 191, 70)
  noStroke()
  circle(x, y, s)

  -- inner white lines
  stroke(255, 255, 255, 180)
  strokeWeight(2)

  local r = s * 0.4

  -- horizontal line
  line(x-r, y, x+r, y)

  -- vertical line
  line(x, y-r, x, y+r)

  -- diagonal lines
  line(x-r*0.7, y-r*0.7,
       x+r*0.7, y+r*0.7)

  line(x-r*0.7, y+r*0.7,
       x+r*0.7, y-r*0.7)

  -- leaf center
  noStroke()
  fill(255, 255, 255, 180)
  circle(x, y, 8)

end


function drawFlower(x, y)

   noStroke()

  -- 6 pink petals
  fill(255, 72, 176, 130)

  circle(x, y - 25, 36)       -- top
  circle(x + 22, y - 10, 36)  -- top right
  circle(x + 22, y + 10, 36)  -- bottom right
  circle(x, y + 25, 36)       -- bottom
  circle(x - 22, y + 10, 36)  -- bottom left
  circle(x - 22, y - 10, 36)  -- top left

  --center of the flower
  fill(255, 232, 0, 180)
  circle(x, y, 18)
end

function drawBoat(x, y)

  push()

  translate(x, y)
  rotate(-QUARTER_PI)

  -- boat body
  fill(255, 232, 0)
  stroke(255, 72, 176)
  strokeWeight(3)

  ellipse(0, 0, 40, 120)


  -- three wood
  line(-14, -25, 14, -25)
  line(-16, 0, 16, 0)
  line(-14, 25, 14, 25)

  pop()

end

function draw()
  background(255)
  noStroke()
  fill(0, 120, 191, 20)
  rect(0, 0, width, height)

-- move leaves slowly
move1 = move1 + speed1
move2 = move2 + speed2
move3 = move3 + speed3

-- change directions
if move1 > 5 or move1 < -5 then
  speed1 = -speed1
end

if move2 > 8 or move2 < -8 then
  speed2 = -speed2
end

if move3 > 6 or move3 < -6 then
  speed3 = -speed3
end

-- draw leaves
for i = 1, #leaves do

  -- group1: leaves 1, 4, 7, 10
  if i == 1 or i == 4 or i == 7 or i == 10 then

    drawleaves(
      leaves[i].x + move1,
      leaves[i].y,
      leaves[i].s
    )

  -- group2: leaves 2, 5, 8, 11
  elseif i == 2 or i == 5 or i == 8 or i == 11 then

    drawleaves(
      leaves[i].x,
      leaves[i].y + move2,
      leaves[i].s
    )

  -- group 3: leaves 3, 6, 9
  else

    drawleaves(
      leaves[i].x + move3,
      leaves[i].y,
      leaves[i].s
    )

  end

end


-- move flowers
flowerMove1 = flowerMove1 + flowerSpeed1
flowerMove2 = flowerMove2 + flowerSpeed2
flowerMove3 = flowerMove3 + flowerSpeed3

-- change direction
if flowerMove1 > 5 or flowerMove1 < -5 then
  flowerSpeed1 = -flowerSpeed1
end

if flowerMove2 > 8 or flowerMove2 < -8 then
  flowerSpeed2 = -flowerSpeed2
end

if flowerMove3 > 6 or flowerMove3 < -6 then
  flowerSpeed3 = -flowerSpeed3
end

-- draw flowers
for i = 1, #flowers do

  if i == 1 then
    drawFlower(
      flowers[i].x + flowerMove1,
      flowers[i].y
    )

  elseif i == 2 then
    drawFlower(
      flowers[i].x,
      flowers[i].y + flowerMove2
    )

  else
    drawFlower(
      flowers[i].x + flowerMove3,
      flowers[i].y
    )
  end

end


-- move boat
boatX = boatX + boatSpeed
boatY = boatY + boatSpeed

-- draw boat
drawBoat(boatX, boatY)

-- restart boat
if boatX > width + 60 or boatY > height + 60 then
  boatX = -60
  boatY = 100
  boatSpeed = random(0.2, 0.5)
end



-- draw rain drops
push()

noFill()
stroke(255, 255, 255, 180)
strokeWeight(1)

for i = 1, #circleX do

  -- draw white circle
  circle(circleX[i], circleY[i], circleSize[i])

  -- circle grows slowly
  circleSize[i] = circleSize[i] + 0.3

  -- restart when too big
  if circleSize[i] > 80 then
    circleSize[i] = random(10, 20)
    circleX[i] = random(width)
    circleY[i] = random(height)
  end

end

pop()

  -- Cursor position for debugging
  noStroke()
  fill(100)
  text("X: "..mouseX.." Y: "..mouseY, mouseX+5, mouseY+30)
end
