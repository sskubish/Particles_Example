////declare Arraylist
//ArrayList<Particle> particles = new ArrayList<Particle>();
//
//void setup() {
//  colorMode(HSB, 360, 100, 100, 100);
//  size(800, 800);
//  particles.add(new Particle(width/2, 120));
//}
//
//void draw() {
//  particles.add(new Particle(mouseX, mouseY));
//  background(0);
//  //go through the array and use the display and update methods on each Particle in the for loop
//  for (int i = particles.size()-1; i >=0; i--) {
//    Particle particles = particles.get(i);
//    particles.display(mouseX, mouseY);
//    particles.move();
//  }
//}

//declare an ArrayList
ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  //add one new particle to the particles ArrayList
  particles.add(new Particle(width/2, 120));
}

void draw() {
  println(particles.size());
    if (mousePressed) {
  particles.add(new Particle(mouseX, mouseY));
    }
  background(0);
  //Go through the ArrayList backwards to prevent flickering
  for (int i = particles.size()-1; i >=0; i--) {
    //Declare a new Particle called p and assign it the current object in the ArrayList
    Particle p = particles.get(i);
    p.display(mouseX, mouseY);
    p.move();   
    if(p.loc.x >= width || p.loc.x<= 0 || p.loc.y >= height) {
     particles.remove(i); 
    }
}
}

