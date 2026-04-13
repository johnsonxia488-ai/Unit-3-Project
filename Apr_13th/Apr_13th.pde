//palette of colors 
color lightseaGreen     =#00A6A6; 
color paleskyBlue       =#BBDEF0; 
color brgihtamberYellow =#EFCA08; 
color goldenOrange      =#F49F0A; 
color grapesodaPurple   =#8E5193; 
color brickemberRed     =#D10000; 
PImage apple; 

void setup() {
  size(600, 600); 
  background(255); 
  apple = loadImage("apple.png"); 
}

void draw() {
  image(apple, 50, 50); 

}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY); 
}
