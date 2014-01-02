//declare Arraylist
ArrayList<Particle> p = new ArrayList<Particle>();

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  p.add(new Particle(width/2, 120));
}

void draw() {
  p.add(new Particle(mouseX, mouseY));
  background(0);
  //go through the array and use the display and update methods on each Particle in the for loop
  for (int i = p.size(); i <= 0; i--) {
    Particle p = p.get(i);
    p.display(mouseX, mouseY);
    p.move();
  }
}

