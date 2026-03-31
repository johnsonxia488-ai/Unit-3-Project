//palette of colors
color lemon = #FCF5C7;
color lightBlue = #AECEEA;
color mediumBlue = #7DB1DE;
color darkBlue = #317FC4;
color darkestBlue = #215583;

//variables for color selection
color selectedColor;

void setup() {
  size(800, 600);
  strokeWeight(6);
  stroke(darkestBlue);
  selectedColor = darkestBlue; 
}

void draw() {
  background(lemon);
  
  //buttons
  fill(lightBlue);
  rect(600, 100, 100, 80);
  fill(mediumBlue);
  rect(600, 300, 100, 80);
  fill(darkBlue);
  rect(600, 500, 100, 80);
  
  //indicator
  fill(selectedColor);
  square(100, 100, 400);
}

void mouseReleased() {
  if (dist(600, 100, mouseX, mouseY) < 100) {
    selectedColor = lightBlue;
  }
  else if (dist(600, 300, mouseX, mouseY) < 100) {
    selectedColor = mediumBlue;
  }
  else if (dist(600, 500, mouseX, mouseY) < 100) {
    selectedColor = darkBlue;
  }
}
