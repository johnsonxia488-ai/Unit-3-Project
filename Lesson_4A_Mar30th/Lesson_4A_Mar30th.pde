//pallette of colors 
color lemon        = #FCF5C7; 
color lightBlue    = #AECEEA; 
color mediumBlue   = #7DB1DE; 
color darkBlue     = #317FC4; 
color darkestBlue = #215583; 

void setup() {
  size(800, 600); 
  strokeWeight(6); 
  stroke(darkestBlue); 
}

void draw()  {
  background(lemon); 
  
  //bottons
  fill(lightBlue); 
  circle(700, 100, 100); 
  
  fill(mediumBlue); 
  circle(700, 300, 100); 
  
  fill(darkBlue); 
  circle(700, 500, 100);
  
  //indicator
  square(100, 100, 400); 
}
