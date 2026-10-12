require("L5")

function setup()
size(800, 800)
noStroke()
background(245, 245, 240)

-- draw a neckline 
-- 1: small circles on top

for i = 1, 5, 1 do
    x = 120 + (i - 1) * 140

    ---- fill with blue
    fill(0, 120, 191)
    circle(x, 120, 20)
end

   -- 2: big circles and small circles
for i = 1, 5, 1 do
    x = 120 + (i - 1) * 140

    -- big circles fill with pink
    fill(255, 72, 176)
    circle(x, 200, 70)


    --in the middle of the big circles,square
    --fill with yellow
    rectMode(CENTER)
    fill(255, 232, 0)
    rect(x + 70, 200, 20,20)
    end

    -- Add the first small circle
    fill(255, 232, 0)
    circle(50, 200, 20)

    -- 3: small circles on bottom
    for i = 1, 5, 1 do
        x = 120 + (i - 1) * 140

    -- random colors
    fill(random(255), random(255), random(255))
    circle(x, 280, 20)


    -- pendant
    fill(random(255), random(255), random(255))
    circle(400,380,100)
    fill(random(255), random(255), random(255))
    circle(400,470,50)
    fill(random(255), random(255), random(255))
    circle(400,520,20)




    end



-- the code below adds the cursor position for bebugging
--fill(0)
--text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
end