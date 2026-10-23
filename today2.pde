class Ball
{
  float x, y;                   
  float diameter;               
  color colour;                 
 
  
  Ball()
  {
    
    x = 130;
    y = 250;
    diameter = 30;
    colour = color(214, 93, 69);
  }
 
  void draw()
  {
    noStroke();
    fill(colour);
    circle(x, y, diameter);
  }
}
