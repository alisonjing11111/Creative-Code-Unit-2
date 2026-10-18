require("L5")


function draw()
end

function setup()

size(1000, 800)

people = {"My son","My husband","My friend"}
costume = {" Mona Lisa","Pumpkin","Witch"}
word = {"LOL", "^^" ,">_<"}

end

function  textGenerator()
background(255,165,0)
fill(0)
textSize(26)


  text(random(people).." is going to dress up as the " .. random(costume) .. " for Halloween.", 30, 200)
  text(random(word),30,300)
end

function mousePressed()
  textGenerator()
end


-- the code below adds the cursor position for bebugging
--fill(0)
--text("X: "..mouseX.."  Y: "..mouseY, mouseX+5,mouseY+30)
--end