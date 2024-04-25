//Xavier McLarey
//3D Solar System

float scale;

float xPos;
float yPos;
float zPos;
float xSpd;
float ySpd;
float zSpd;
float earthxPos;
float earthyPos;
float earthzPos;

float sunxPos;
float mercuryxPos;
float venusxPos;
float moonxPos;
float marsxPos;
float jupiterxPos;
float saturnxPos;
float uranusxPos;
float neptunexPos;

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
  
  //sets the scale factor of the solar system so you can make it bigger or smaller if you want
  scale = 1;
  //setting the initial position of all of the planets
  sunxPos = width/2;
  mercuryxPos = 100;
  venusxPos = 1000;
  moonxPos = 50;
  marsxPos = 2000;
  jupiterxPos = 2500;
  saturnxPos = 3000;
  uranusxPos = 3500;
  neptunexPos = 4000;
  yPos = height/2;
  zPos = -1000;
  
  //setting earths position and tracking it so the moon can follow it
  earthxPos = 1500;
  earthyPos = 0;
  earthzPos = -1000;
  
  //sets all of the planets size variables
  sunSize = 500 * scale;
  mercurySize = 100 * scale;
  venusSize = 150 * scale;
  earthSize = 200 * scale;
  moonSize = 50 * scale;
  marsSize = 175 * scale;
  jupiterSize = 300 * scale;
  saturnSize = 275 * scale;
  uranusSize = 225 * scale;
  neptuneSize = 200 * scale;
  
  /*
    loading all of the images of the planets
    creating all of the planets by making them into a sphere shape
    the createShape() command makes it easier to draw a shape because you 
    can if you want change the sphere into a triangle, cube, or an arc 
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
  
  ////this lets you change the scale factor whenever you want
  //if(key == 'q' || key == 'Q')
  //  scale += 0.5;
  //if(key == 'e' || key == 'E')
  //  scale -= 0.5;
  //if(scale >= 2 || scale <= 0)
  //  scale = 1;
  //this makes you be able to switch the planets between spheres and boxs
  if(key == 'b' || key == 'B')
  {
    //sun
    sun = createShape(BOX, sunSize);
    sun.setTexture(Sun);
    //Mercury
    mercury = createShape(BOX, mercurySize);
    mercury.setTexture(Mercury);
    //Venus
    venus = createShape(BOX, venusSize);
    venus.setTexture(Venus);
    //Earth
    earth = createShape(BOX, earthSize);
    earth.setTexture(Earth);
    //Moon
    moon = createShape(BOX, moonSize);
    moon.setTexture(Moon);
    //Mars
    mars = createShape(BOX, marsSize);
    mars.setTexture(Mars);
    //Jupiter
    jupiter = createShape(BOX, jupiterSize);
    jupiter.setTexture(Jupiter);
    //Saturn
    saturn = createShape(BOX, saturnSize);
    saturn.setTexture(Saturn);
    //Uranus
    uranus = createShape(BOX, uranusSize);
    uranus.setTexture(Uranus);
    //Neptune
    neptune = createShape(BOX, neptuneSize);
    neptune.setTexture(Neptune);
  }
  if(key == 's' || key == 'S')
  {
    //Sun
    sun = createShape(SPHERE, sunSize);
    sun.setTexture(Sun);
    //Mercury
    mercury = createShape(SPHERE, mercurySize);
    mercury.setTexture(Mercury);
    //Venus
    venus = createShape(SPHERE, venusSize);
    venus.setTexture(Venus);
    //Earth
    earth = createShape(SPHERE, earthSize);
    earth.setTexture(Earth);
    //Moon
    moon = createShape(SPHERE, moonSize);
    moon.setTexture(Moon);
    //Mars
    mars = createShape(SPHERE, marsSize);
    mars.setTexture(Mars);
    //Jupiter
    jupiter = createShape(SPHERE, jupiterSize);
    jupiter.setTexture(Jupiter);
    //Saturn
    saturn = createShape(SPHERE, saturnSize);
    saturn.setTexture(Saturn);
    //Uranus
    uranus = createShape(SPHERE, uranusSize);
    uranus.setTexture(Uranus);
    //Neptune
    neptune = createShape(SPHERE, neptuneSize);
    neptune.setTexture(Neptune);
  }

  //setting the default camera position
  camera(width/2, height+1000, 4000, width/2, height/2, 0, 0, -1, 0);
  
  //drawing all of the planets and the sun
  //Sun
  sun();
  
  //this lets you spin the whole solar system around to see the whole thing
  if(mousePressed)
    rotateY( radians(mouseX/5) );
  
  //sets the planets to orbit around the sun except for the moon
  translate(xPos, yPos, zPos);
  //Mercury
  mercury();
  //Venus
  venus();
  //Earth
  earth();
  //Mars
  mars();
  //Jupiter
  jupiter();
  //Saturn
  saturn();
  //Uranus
  uranus();
  //Neptune
  neptune();
  //Moon
  rotate3Spd += 1;
  rotateY( radians(rotate3Spd) );
  moon();

  //debugging
  //println("X: " + earthxPos);
  //println("Y: " + earthyPos);
  //println("Z: " + earthzPos);
}

//creating the sun
void sun()
{  
  pushMatrix();
  translate(xPos, yPos, zPos);
  noStroke();
  lights();
  shape(sun);
  popMatrix();
}

//creating the mercury
void mercury()
{  
  pushMatrix();
  rotate1Spd += 4.15;
  rotateY( radians(rotate1Spd) );
  translate(mercuryxPos, 0, zPos);
  noStroke();
  lights();
  shape(mercury);
  popMatrix();
}

//creating the venus
void venus()
{  
  pushMatrix();
  rotate2Spd += 1.62;
  rotateY( radians(rotate2Spd) );
  translate(venusxPos, 0, zPos);
  noStroke();
  lights();
  shape(venus);
  popMatrix();
}

//creating the earth
void earth()
{  
  pushMatrix();
  rotate3Spd += 1;
  rotateY( radians(rotate3Spd) );
  translate(earthxPos * scale, earthyPos, earthzPos);
  noStroke();
  lights();
  shape(earth);
  popMatrix();
}

  //creating the moon
  void moon()
  {
    translate(earthxPos * scale, earthyPos * scale, earthzPos);
    
    pushMatrix();
    moonRotateSpd += 10;
    rotateY( radians(moonRotateSpd) );
    translate(50 * scale, 0, -500);
    noStroke();
    lights();
    shape(moon);
    popMatrix();
  
  }

//creating the mars
void mars()
{  
  pushMatrix();
  rotate4Spd += 0.53;
  rotateY( radians(rotate4Spd) );
  translate(marsxPos, 0, zPos);
  noStroke();
  lights();
  shape(mars);
  popMatrix();
}

//creating the jupiter
void jupiter()
{  
  pushMatrix();
  rotate5Spd += 0.083;
  rotateY( radians(rotate5Spd) );
  translate(jupiterxPos, 0, zPos);
  noStroke();
  lights();
  shape(jupiter);
  popMatrix();
}

//creating the saturn
void saturn()
{  
  pushMatrix();
  rotate6Spd += 0.0345;
  rotateY( radians(rotate6Spd) );
  translate(saturnxPos, 0, zPos);
  noStroke();
  lights();
  shape(saturn);
  popMatrix();
}

//creating the uranus
void uranus()
{  
  pushMatrix();
  rotate7Spd += 0.012;
  rotateY( radians(rotate7Spd) );
  translate(uranusxPos, 0, zPos);
  noStroke();
  lights();
  shape(uranus);
  popMatrix();
}

//creating the neptune
void neptune()
{  
  pushMatrix();
  rotate8Spd += 0.0061;
  rotateY( radians(rotate8Spd) );
  translate(neptunexPos, 0, zPos);
  noStroke();
  lights();
  shape(neptune);
  popMatrix();
}
