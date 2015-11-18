//declare variables
float x, y, velX, velY, diam;
PVevctor loc,vel; //replaces x, y, velx, and velY


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  vel.x = random(-5,5);
  vel.y = random(-5,5);
  loc = new PVector(width/2, height/2);
  vel = new PVector(random(-5,5), random(-5,5));
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;
  x += vel.x;
  y += vel.y;

  //wrap the ball's position
  if (x + diam/2 >= width) {
    x = 0;    
  } else if (x - diam/2 <= 0) {
    x = width;
  }
  if (y + diam/2 >= height) {
    y = 0;
  } else if (y - diam/2 <= 0) {
    y = height;
  }
  
}