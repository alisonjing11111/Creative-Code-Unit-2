require("L5")

function setup()
  size(900, 600)
end

function draw()
  background(245, 245, 245)

  --draw a chimney
  stroke(2)
  fill(227, 0, 34)
  rect(width*7/9,height*2/10, width*1/30, height*3/10 )

  -- draw a roof
  stroke(2)
  fill(0, 84, 159)
  triangle(width*2/3, height*1/6, width*4/9, height*1/3, width*8/9, height*1/3)

  --draw a rec red house in the middle
  strokeWeight(1)
  fill(227, 0, 34)
  rect(width/2, height/3,width/3,height/2)

  -- draw a square window 
  fill(245, 245, 245)
  square(width*5/9, height*5/12, width/10)

  --- draw yellow door
  fill(255, 209, 0)
  rect(width-width/3, height/2, width/9 , height/3)

  --a green tree in the left
  fill(255, 209, 0)
  ellipse(width/8, height/2,width/10, height/5)

  -- a green tree stem in the left
  stroke(3)
  fill(0, 84, 159)
  line(width/8, height/2,width/8,600)

  --a green tree in the right
  fill(0, 84, 159)
  ellipse(width/4, height/2,width/10, height/5)

  -- a green tree stem in the right 
  stroke(3)
  line(width/4, height/2,width/4, 600)

  -- draw a street
  stroke(2)
  fill(0)
  rect(0,height - height / 4,width, height/4)

  --cursor position very important
  fill(255, 204, 153)
  text("X: "..mouseX.." Y: "..mouseY, mouseX+5, mouseY+30)

  --mouse hover and item move with mouse I might use it later  
  -- user defined variables
  --circleX = 100
  --circleY = 200
  --fill(255)
  --ellipse(mouseX,mouseY,circleX/2,circleY/2)
end
