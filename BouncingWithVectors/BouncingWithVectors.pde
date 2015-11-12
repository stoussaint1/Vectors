//declare variables
float x, y, velX, velY, diam;
PVector loc,vel; //replaces x, y, velX, and velY

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  loc = new PVector(width/2, height/2);
  vel = new PVector(random(-5,5), random(-5,5));
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += vel.x;
  y += vel.y;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    vel.x = -abs(vel.x);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    vel.x = abs(vel.x);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    vel.y = -abs(vel.y);
  } else if (y - diam/2 <= 0) {
    vel.y = abs(vel.y);
  }
  
}