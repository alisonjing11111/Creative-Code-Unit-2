require("L5")

function setup()
  size(600, 600)

  -- Draw a picture
  windowTitle("Basic sketch")

  describe('Draws a yellow background')
end

function draw()
  -- Fills the background with the blue yellow
  background(230, 245, 255)
 
  -- draw a sun
fill(255, 220, 0)
noStroke()
circle(500, 100, 70)

-- draw sunlight
  stroke(255, 220, 0)
  strokeWeight(3)
  line(500, 20, 500, 50)  --up one
  line(500, 150, 500, 180)  -- bottom one
  line(420, 100, 450, 100)  -- left one
  line(550, 100, 580, 100)  -- right one

  line(450, 50, 470, 70)    -- left up
  line(530, 130, 550, 150)  -- right bottom
  line(550, 50, 530, 70)    -- right up
  line(470, 130, 450, 150)  -- left bottom

  -- draw clouds
  noStroke()
  fill(255, 255, 255)
  -- left cloud
  ellipse(100,70,75,50)
  ellipse(75,100,70,40)
  ellipse(110,80,85,40)
  ellipse(135,90,55,40)

  -- draw a road

  fill(160, 160, 160)
  rect(0, 300, 600, 150)

  -- white dash line
fill(255, 255, 255)
rect(30, 375, 80, 10)
rect(150, 375, 80, 10)
rect(270, 375, 80, 10)
rect(390, 375, 80, 10)
rect(510, 375, 80, 10)

  --stroke from here
  stroke(0, 0, 0)
  strokeWeight(2)

  -- draw a car's light  
  fill(255, 255, 0)
  circle(120,300,70)

  -- draw a blue car body
  fill(29, 156, 254)

  -- draw a car top part
  rect(150,150,300,120)

  -- draw a car bottom part
  rect(100,250,400,120)

  -- draw the left wheel
  fill(69, 69, 69)
  circle(200, 370, 100)


  -- draw the left small wheel,light gray
  fill(223, 223, 223)
  circle(200, 370, 30)

  -- draw the right wheel
  fill(69, 69, 69)
  circle(400, 370, 100)

  -- draw the right small wheel,light gray
  fill(223, 223, 223)
  circle(400, 370, 30)

  -- draw the left window
  fill(192, 236, 253)
  rect(180, 180, 80, 60)

  -- draw the right window
  rect(340, 180, 80, 60)

stroke(29, 156, 254)
strokeWeight(2)
  line(150, 250, 450, 250)
  stroke(0,0,0)

end