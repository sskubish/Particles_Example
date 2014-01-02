class Particle {
  PVector loc, vel, acc;
  float size; 
  float hue;
  Particle(float x, float y) {
    loc = new PVector(x, y);
    vel= new PVector(0, 1);
    acc= new PVector(random(-5, 5), random(1, 5));
    size = 10;
    hue = random(360);
  }
  void display(float x, float y) {
    ellipse(x, y, size, size);
  }
  void move() {
    loc.add(vel);
    vel.add(acc);
  }
}
