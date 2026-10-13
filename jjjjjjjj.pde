// -- Declare a new PImage called 'i' as a global variable:
PImage i;                 
 
void setup () {
    size(600,900);
     
    // -- Load an image into the PImage object from your sketch folder:
    i = loadImage("patrick-robert-doyle-QO8lUsn_ORc-unsplash.jpg");
}
 
void draw() {
    // -- Use the 'image()' method to draw the image on the canvas (60 times per second - overkill!):
    image(i,0,0);
}
