//palette of colors 
color lightseaGreen     = #00A6A6; 
color paleskyBlue       = #BBDEF0; 
color brgihtamberYellow = #EFCA08; 
color goldenOrange      = #F49F0A; 
color grapesodaPurple   = #8E5193; 
color brickemberRed     = #D10000; 

color selectedColor;

PImage apple; 
boolean appleOn; 

void setup() {
  size(800, 800); 
  background(100); 
  apple = loadImage("apple.png"); 
  appleOn = false; 
  selectedColor = 0;
}

void draw() {
  fill(255); 
  
  //toolbar
  stroke(0); 
  strokeWeight(1); 
  fill(100); 
  rect(0, 0, 800, 100);  
  
  //buttons
  tactile(100, 100, 50); 
  fill(lightseaGreen);
  circle(100, 100, 100);
  
  tactile(200, 100, 50); 
  fill(paleskyBlue);
  circle(200, 100, 100);

  tactile(300, 100, 50); 
  fill(brgihtamberYellow);
  circle(300, 100, 100);
  
  tactile(100, 200, 50); 
  fill(goldenOrange);
  circle(100, 200, 100);
  
  tactile(200, 200, 50); 
  fill(grapesodaPurple);
  circle(200, 200, 100);

  tactile(300, 200, 50); 
  fill(brickemberRed);
  circle(300, 200, 100);

  //durian button 
  tactile(500, 0, 100, 80); 
  appleOnOff(); 
  strokeWeight(1); 
  rect(500, 0, 100, 80); 
  image(apple, 500, 0, 100, 80); 
}

void mouseDragged() {
  if (appleOn == false) {
    //squiggly line 
    strokeWeight(5); 
    stroke(selectedColor); 
    line(pmouseX, pmouseY, mouseX, mouseY); 
  } else {
    //apple drawing 
    image(apple, mouseX, mouseY, 100, 80); 
  }
} 

void mouseReleased() {
  if (dist(100, 100, mouseX, mouseY) < 50) {
    selectedColor = lightseaGreen;
  }
  if (dist(200, 100, mouseX, mouseY) < 50) {
    selectedColor = paleskyBlue;
  }
  if (dist(300, 100, mouseX, mouseY) < 50) {
    selectedColor = brgihtamberYellow;
  }
  if (dist(100, 200, mouseX, mouseY) < 50) {
    selectedColor = goldenOrange;
  }
  if (dist(200, 200, mouseX, mouseY) < 50) {
    selectedColor = grapesodaPurple;
  }
  if (dist(300, 200, mouseX, mouseY) < 50) {
    selectedColor = brickemberRed;
  }

  //durian button toggle
  if (mouseX > 500 && mouseX < 600 && mouseY > 0 && mouseY < 80) {
    appleOn = !appleOn; 
  }
}

void tactile (int x, int y, int r) { 
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void tactile(int x, int y, int w, int h) { 
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0); 
  } else { 
    fill(255); 
  }
}

void appleOnOff() { 
  if (appleOn == true) {
    stroke(255, 0, 0); 
    strokeWeight(5); 
  } else {
    stroke(0); 
    strokeWeight(1);
  }
}
