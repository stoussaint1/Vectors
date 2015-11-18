//declare variables
float diam;
PVector loc,vel, acc; //replaces x, y, velocity, and acceleration


void setup() {
  //set size of canvas
  size(800, 800);

  //initialize variables
  diam = 80;
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = PVector.random2D();
  vel.mult(1);
  acc.mult(.01);
}

void draw() {
  fill(frameCount%360, 70, 80);
 acc = PVector.random2D();
 acc.mult(.1);
 
  //draw ball
  ellipse(loc.x, loc.y, diam, diam);
  

  //add velocity to position
loc.add(vel);

 //add acceleration to velocity
 vel.add(acc);

  //wrap the ball's position
  if (loc.x + diam/2 >= width) {
    loc.x = 0;    
  } else if (loc.x - diam/2 <= 0) {
    loc.x = width;
  }
  if (loc.y + diam/2 >= height) {
    loc.y = 0;
  } else if (loc.y - diam/2 <= 0) {
    loc.y = height;
  }
  
}