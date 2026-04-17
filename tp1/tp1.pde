PImage img;

void setup() {
  size(800, 400);
  img = loadImage("casa.jpg");
}

void draw() {
  background(220);
println(mouseX,mouseY);
  image(img, 0, 0, 400, 400);

  // Línea divisoria
  stroke(0);
  line(400, 0, 400, 400);

  noStroke();
  fill(200, 210, 200);
  rect(400, 0, 400, 200);
  fill(120, 90, 80);
  rect(400, 200, 400, 200);
  fill(150, 160, 150);
  triangle(420, 200, 500, 120, 580, 200);
  triangle(550, 200, 650, 130, 750, 200);
  fill(180, 170, 160);
  rect(520, 60, 180, 200);
  rect(500, 40, 200, 80);
  fill(255, 120, 0);
  rect(540, 80, 120, 80);
  fill(100, 90, 85);
  rect(560, 200, 80, 80);
  fill(160, 150, 140);
  triangle(700, 260, 700, 360, 600, 360);
}
