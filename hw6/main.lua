require("L5")
posY =0

function setup()
  size(600, 600)
  
end

function draw()

-- fill the background with light blue
background(200, 230, 245)


-- add one to the variable, from the top
posY = posY + 1

--if the posY is between 0-200, the shape is circle
if posY <200 then
 -- black circle
 noStroke()
 fill(150, 120, 90)
 circle (300,posY,50)

 --if the posY is between 200-400, the shape is square 

elseif posY<400 then
 -- yellow square
 noStroke()
 fill(200, 120, 90)
 circle (300,posY,80)

--if the posY is between 400-600, the shape is circle

elseif posY<600 then
  --red circle
  noStroke()
  fill(245, 120, 90)
  circle(300,posY,110)
end

--restart from the top
if posY>600 then 
  posY=0
end


-- the code below adds the cursor position for bebugging
fill(0)
text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end