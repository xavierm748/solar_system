//Xavier McLarey
//3D Solar System


float xPos;
float yPos;
float zPos;
float xSpd;
float ySpd;
float zSpd;

float sunSize;
float mercurySize;
float venusSize;
float earthSize;
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

PShape sun;
PShape mercury;
PShape venus;
PShape earth;
PShape mars;
PShape jupiter;
PShape saturn;
PShape uranus;
PShape neptune;

PImage Sun;
PImage Mercury;
PImage Venus;
PImage Earth;
PImage Mars;
PImage Jupiter;
PImage Saturn;
PImage Uranus;
PImage Neptune;

void setup()
{
  fullScreen(P3D);
  noStroke();

  xPos = width/2;
  yPos = height/2;
  zPos = -1000;
  
  sunSize = 500;
  mercurySize = 100;
  venusSize = 150;
  earthSize = 200;
  marsSize = 175;
  jupiterSize = 300;
  saturnSize = 275;
  uranusSize = 225;
  neptuneSize = 200;


  xSpd = 10;
  ySpd = 10;
  zSpd = 10;
  
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
  camera(width/2, height+1000, -5000, 
         width/2, height/2, 0, 
         0, -1, 0);
  //directionalLight( 255, 255, 255, -1, 0, 0 );
  
  //Sun
  pushMatrix();
  translate(width/2, height/2, zPos);
  noStroke();
  lights();
  shape(sun);
  popMatrix();
  
  translate(xPos, yPos, zPos);
  
  //Mercury
  pushMatrix();
  rotate1Spd += 0.1;
  rotateY( radians(rotate1Spd) );
  translate(100, 0, zPos);
  noStroke();
  lights();
  shape(mercury);
  popMatrix();
  
  //Venus
  pushMatrix();
  rotate2Spd += 0.2;
  rotateY( radians(rotate2Spd) );
  translate(700, 0, zPos);
  noStroke();
  lights();
  shape(venus);
  popMatrix();
  
  //Earth
  pushMatrix();
  rotate3Spd += 0.3;
  rotateY( radians(rotate3Spd) );
  translate(1200, 0, zPos);
  noStroke();
  lights();
  shape(earth);
  popMatrix();
  
  //Mars
  pushMatrix();
  rotate4Spd += 0.4;
  rotateY( radians(rotate4Spd) );
  translate(1700, 0, zPos);
  noStroke();
  lights();
  shape(mars);
  popMatrix();
  
  //Jupiter
  pushMatrix();
  rotate5Spd += 0.5;
  rotateY( radians(rotate5Spd) );
  translate(2200, 0, zPos);
  noStroke();
  lights();
  shape(jupiter);
  popMatrix();
  
  //Saturn
  pushMatrix();
  rotate6Spd += 0.6;
  rotateY( radians(rotate6Spd) );
  translate(2700, 0, zPos);
  noStroke();
  lights();
  shape(saturn);
  popMatrix();
  
  //Uranus
  pushMatrix();
  rotate7Spd += 0.7;
  rotateY( radians(rotate7Spd) );
  translate(3200, 0, zPos);
  noStroke();
  lights();
  shape(uranus);
  popMatrix();
  
  //Neptune
  pushMatrix();
  rotate8Spd += 0.8;
  rotateY( radians(rotate8Spd) );
  translate(3700, 0, zPos);
  noStroke();
  lights();
  shape(neptune);
  popMatrix();
  
  //println("X: " + xPos);
  //println("Y: " + yPos);
  //println("Z: " + zPos);
}
