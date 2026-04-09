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
