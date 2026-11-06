let cloudX= -80;

function setup() {
  createCanvas(600, 600);
  textSize(14);
  fill(0);

}

function draw() {
  background(250, 248, 240);
  noStroke();

  //landscape
  // grass
  fill(225, 240, 151);
  ellipse(300, 660, 950, 430);
  rect(0, 470, 600, 130);

  // red tree crown
  fill(255, 144, 122);
  ellipse(90, 265, 180, 225);
  ellipse(43, 320, 155, 145);
  ellipse(153, 326, 168, 160);
  ellipse(190, 300, 90, 120);
  
  // left pink tree trunk
  stroke(132, 123, 51);
  strokeWeight(7);
  strokeCap(ROUND);
  line(96, 440, 96, 360);
  line(96, 390, 55, 350);
  line(96, 390, 127, 348);
  line(96, 390, 96, 335);
  noStroke();

  // right green tree trunk
  stroke(116, 146, 72);
  strokeWeight(6);
  line(508, 450, 508, 315);
  line(508, 385, 479, 349);
  line(508, 385, 533, 348);
  noStroke();

  // green tree crown
  fill(103, 174, 130);
  ellipse(505, 291, 153, 265);

  // green tree branches
  stroke(91, 143, 76);
  strokeWeight(5);
  line(508, 424, 508, 313);
  line(508, 375, 480, 342);
  line(508, 375, 535, 337);
  noStroke();

  // left blue bush
  fill(145, 214, 199);
  ellipse(45, 479, 180, 115);
  ellipse(100, 495, 155, 95);
  rect(0, 493, 170, 47);

  // right yellow bush
  fill(255, 219, 91);
  ellipse(560, 472, 230, 160);
  ellipse(515, 501, 140, 98);

  // left flowers
  stroke(85, 142, 81);
  strokeWeight(4);
  line(69, 550, 69, 510);
  line(96, 550, 96, 525);
  noStroke();

  fill(226, 77, 41);
  ellipse(69, 505, 23, 25);
  ellipse(96, 524, 19, 20);

  // right flower
  stroke(90, 145, 80);
  strokeWeight(4);
  line(511, 551, 507, 510);
  line(511, 538, 497, 527);
  noStroke();

  fill(255);
  ellipse(507, 508, 22, 24);  

  // draw a peroson follow the mouse 
  drawPerson(mouseX, mouseY);

  //draw a cloud move
  drawCloud(cloudX,100);

  //move cloud to the right
  cloudX = cloudX +1;

  if (cloudX> width +80){
    cloudX= -80
  }

  // Mouse coordinates
  fill(0);
  noStroke();
  textSize(14);
  text(
    "Mouse X: " + round(mouseX) + " Mouse Y: " + round(mouseY), mouseX, mouseY + 30);
}

//fuction drawperson move
function drawPerson(x,y){
  
   // Shadow
  fill(117, 155, 69, 110);
  ellipse(x + 20, y + 15, 45, 7);

  // Head
  fill(0);
  ellipse(x, y - 38, 13, 15);

  // Body
  fill(31, 126, 220);
  triangle(x, y - 28, x - 9, y, x + 9, y);

  // Pants
  fill(232, 72, 35);
  rect(x - 5, y, 5, 14);
  rect(x + 2, y, 5, 14);

  // Shoes
  fill(35);
  ellipse(x - 3, y + 15, 6, 4);
  ellipse(x + 5, y + 15, 6, 4);
}

  function drawCloud(x, y) {
  noStroke();
  fill(255);

  ellipse(x - 30, y + 10, 55, 35);
  ellipse(x, y - 5, 65, 50);
  ellipse(x + 35, y + 5, 60, 40);
  ellipse(x + 5, y + 15, 100, 30);
}






