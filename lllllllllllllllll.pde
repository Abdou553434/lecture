
PImage pic;

void setup() {
  size(800, 800);

  pic = loadImage("image.png");

  if (pic != null) {
    image(pic, 0, 0);
    println(pic.width);
    println(pic.height);
  } else {
    println("Image not found. Check the data folder.");
  }
}
