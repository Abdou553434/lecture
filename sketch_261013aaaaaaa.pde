
String[] dataFile;
int lineToShow;

void setup() {
  size(600, 900);

  dataFile = loadStrings("https://jsndyks.github.io/cc26/data/theTimeMachine.txt");

  lineToShow = 0;

  textSize(14);
  fill(0);
}

void draw() {
  background(250);

  if (dataFile == null || dataFile.length == 0) {
    fill(0);
    text("Could not load the text file!", 20, 30);
    return;
  }

  lineToShow = constrain(lineToShow, 0, dataFile.length - 1);

  fill(0);
  text(dataFile[lineToShow], 100, 5, width - 150, height - 10);

  int i = 0;

  for (String line : dataFile) {
    float x = map(line.length(), 0, 2500, 5, width - 5);
    float y = map(i, 0, dataFile.length, 0, height);

    // Change colour for lines containing "onster"
    if (line.contains("onster")) {
      stroke(255, 32, 32);
    } else {
      stroke(32);
    }

    // Draw each bar
    line(5, y, x, y);

    i++;
  }
}

void mouseMoved() {
  if (dataFile != null && dataFile.length > 0) {
    float lineFromMouseY = map(mouseY, 0, height, 0, dataFile.length);
    lineToShow = constrain(int(lineFromMouseY), 0, dataFile.length - 1);
  }
}
