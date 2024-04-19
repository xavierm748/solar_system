//Xavier McLarey
//3D Solar System

float xPos;
float yPos;
float zPos;
float xSpd;
float ySpd;
float zSpd;
float earthxPos;
float earthyPos;
float earthzPos;

float sunSize;
float mercurySize;
float venusSize;
float earthSize;
float moonSize;
float marsSize;
float jupiterSize;
float saturnSize;
float uranusSize;
float neptuneSize;

float rotate1Spd;
float rotate2Spd;
float rotate3Spd;
float rotate4Spd;
float rotate5Spd;
float rotate6Spd;
float rotate7Spd;
float rotate8Spd;
float moonRotateSpd;

PShape sun;
PShape mercury;
PShape venus;
PShape earth;
PShape moon;
PShape mars;
PShape jupiter;
PShape saturn;
PShape uranus;
PShape neptune;

PImage Sun;
PImage Mercury;
PImage Venus;
PImage Earth;
PImage Moon;
PImage Mars;
PImage Jupiter;
PImage Saturn;
PImage Uranus;
PImage Neptune;

void setup()
{
  fullScreen(P3D);
  noStroke();
 
  //setting initial values of every variable
  //setting the initial position of all of the planets
  xPos = width/2;
  yPos = height/2;
  zPos = -1000;
  
  //setting earths position and tracking it so the moon can follow it
  earthxPos = 1500;
  earthyPos = 0;
  earthzPos = -1000;
  
  //sets all of the planets size variables
  sunSize = 500;
  mercurySize = 100;
  venusSize = 150;
  earthSize = 200;
  moonSize = 50;
  marsSize = 175;
  jupiterSize = 300;
  saturnSize = 275;
  uranusSize = 225;
  neptuneSize = 200;
  
  /*
    loading all of the images of the planets
    creating all of the planets by making them into a sphere shape
    the createShape() command makes it easier to draw a shape because you 
    can if you want change the sphere into a triangle, square, or an arc 
    making the images of the planet the texture of the shape almost like a fill command
    the setTexture() command makes the shape the image instead of the image being shperical
  */
  //Sun
  Sun = loadImage("sun.png");
  sun = createShape(SPHERE, sunSize);
  sun.setTexture(Sun);
  //Mercury
  Mercury = loadImage("mercury.png");
  mercury = createShape(SPHERE, mercurySize);
  mercury.setTexture(Mercury);
  //Venus
  Venus = loadImage("venus.png");
  venus = createShape(SPHERE, venusSize);
  venus.setTexture(Venus);
  //Earth
  Earth = loadImage("earth.png");
  earth = createShape(SPHERE, earthSize);
  earth.setTexture(Earth);
  //Moon
  Moon = loadImage("moon.png");
  moon = createShape(SPHERE, moonSize);
  moon.setTexture(Moon);
  //Mars
  Mars = loadImage("mars.png");
  mars = createShape(SPHERE, marsSize);
  mars.setTexture(Mars);
  //Jupiter
  Jupiter = loadImage("jupiter.png");
  jupiter = createShape(SPHERE, jupiterSize);
  jupiter.setTexture(Jupiter);
  //Saturn
  Saturn = loadImage("saturn.png");
  saturn = createShape(SPHERE, saturnSize);
  saturn.setTexture(Saturn);
  //Uranus
  Uranus = loadImage("uranus.png");
  uranus = createShape(SPHERE, uranusSize);
  uranus.setTexture(Uranus);
  //Neptune
  Neptune = loadImage("neptune.png");
  neptune = createShape(SPHERE, neptuneSize);
  neptune.setTexture(Neptune);
  
}

void draw()
{
  background(0);
  
  //setting the initial camera position
  camera(width/2, height+1000, 4000, width/2, height/2, 0, 0, -1, 0);
  
  //this lets you spin the whole solar system around to see the whole thing
  if(mousePressed)
  {
    translate(xPos, yPos, zPos);
    rotateY( radians(mouseX/5) );
  }
  
  //drawing all of the planets and the sun
  //Sun
  pushMatrix();
  translate(width/2, height/2, zPos);
  noStroke();
  lights();
  shape(sun);
  popMatrix();
  
  //setting the rotation point for all of the planets except for the moon
  translate(xPos, yPos, zPos);
 
  //Mercury
  pushMatrix();
  rotate1Spd += 4.15;
  rotateY( radians(rotate1Spd) );
  translate(100, 0, zPos);
  noStroke();
  lights();
  shape(mercury);
  popMatrix();
 
  //Venus
  pushMatrix();
  rotate2Spd += 1.62;
  rotateY( radians(rotate2Spd) );
  translate(1000, 0, zPos);
  noStroke();
  lights();
  shape(venus);
  popMatrix();
 
  //Earth
  pushMatrix();
  rotate3Spd += 1;
  rotateY( radians(rotate3Spd) );
  translate(earthxPos, earthyPos, earthzPos);
  noStroke();
  lights();
  shape(earth);
  popMatrix();
    
  //Mars
  pushMatrix();
  rotate4Spd += 0.53;
  rotateY( radians(rotate4Spd) );
  translate(2000, 0, zPos);
  noStroke();
  lights();
  shape(mars);
  popMatrix();
 
  //Jupiter
  pushMatrix();
  rotate5Spd += 0.083;
  rotateY( radians(rotate5Spd) );
  translate(2500, 0, zPos);
  noStroke();
  lights();
  shape(jupiter);
  popMatrix();
 
  //Saturn
  pushMatrix();
  rotate6Spd += 0.0345;
  rotateY( radians(rotate6Spd) );
  translate(3000, 0, zPos);
  noStroke();
  lights();
  shape(saturn);
  popMatrix();
 
  //Uranus
  pushMatrix();
  rotate7Spd += 0.012;
  rotateY( radians(rotate7Spd) );
  translate(3500, 0, zPos);
  noStroke();
  lights();
  shape(uranus);
  popMatrix();
 
  //Neptune
  pushMatrix();
  rotate8Spd += 0.0061;
  rotateY( radians(rotate8Spd) );
  translate(4000, 0, zPos);
  noStroke();
  lights();
  shape(neptune);
  popMatrix();
  
  //Moon
  rotate3Spd += 1;
  rotateY( radians(rotate3Spd) );
  moon();

  //debugging
  //println("X: " + earthxPos);
  //println("Y: " + earthyPos);
  //println("Z: " + earthzPos);
}

//creating the moon
void moon()
{
  translate(earthxPos, earthyPos, earthzPos);
  
  pushMatrix();
  moonRotateSpd += 10;
  rotateY( radians(moonRotateSpd) );
  translate(50, 0, -500);
  noStroke();
  lights();
  shape(moon);
  popMatrix();

}
