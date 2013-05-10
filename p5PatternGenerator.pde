/* ----------------------------

    P5 Generator Sample
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */


// cp5
import controlP5.*;
ControlP5 cp5;

boolean cp5Visble = true;

// color
color bgColor = color(0);
int bgAlpha = 10;

color eColor = color(46, 122, 234);
color rColor = color(102, 73, 163, 200);

// pattern
PatternSystem ps;
Rectangle r1;
Ellipse e1;

int eNum = 1;
int ew = 50;
int eh = 50;
int eShiftX = 0;
int eShiftY = 0;

int rNum = 1;
int rw = 50;
int rh = 50;
int rShift = 0;

String[][] cpArray = {
    {"eNum","1","50"},
    {"ew","1","100"},
    {"eh","1","100"},
    {"eShiftX","1","100"},
    {"eShiftY","1","100"},
    {"rNum","1","50"},
    {"rw","1","100"},
    {"rh","1","100"},
    {"rShift","1","200"}
};

/* ////////////////////////////
    setup
//////////////////////////// */

void setup() {
    // Screen
    size(600, 600);
    background(bgColor);

    smooth();
    noStroke();

    // pattern System
    ps = new PatternSystem();
    
    // seed graphics
    createSeedGraphics();

    // setup cp5
    setupCP5(cpArray);
}

/* ////////////////////////////
    loop
//////////////////////////// */

void draw() {
    // Background
    // background(bgColor);
    fadeBackground(bgColor, bgAlpha);
    
    // e1
    fill(eColor);
    e1.update(0, 0, ew, eh);
    ps.tiling(eNum, eShiftX, eShiftY, e1);

    pushMatrix();
    translate(width / 2, height / 2);

    // r1
    fill(rColor);
    r1.update(0, 0, rw, rh);
    ps.setRadially(0, 0, rShift, rNum, r1);
    
    popMatrix();
    
    
}

/* ////////////////////////////
    create Seed for Pattern
//////////////////////////// */

    void createSeedGraphics() {
        ellipseMode(CORNERS);
        r1 = new Rectangle();
        e1 = new Ellipse();
    }

/* ////////////////////////////
    fade background
//////////////////////////// */

void fadeBackground(color c, int a) {
    noStroke();
    fill(c, a);
    rectMode(CORNER);
    rect(0, 0, width, height);
}

/* ////////////////////////////

    sets up cp5.
    @param myArray required var, min value, max value
    @return void

//////////////////////////// */

void setupCP5(String[][] myArray) {
    // cp5 position
    int xPos = 10;
    int yPos = 10;  
    int yMargin = 15;
    int len = myArray.length;

    // cp5 
    cp5 = new ControlP5(this);

    // slider
    for (int i = 0; i < len; i++) {
        cp5.addSlider(myArray[i][0])
            .setPosition(xPos, yPos + yMargin * i )
                .setRange(float(myArray[i][1]), float(myArray[i][2]));
            ;
    }
}

/* ////////////////////////////

    cp5 visible

//////////////////////////// */

void mouseClicked() {
//  if (cp5Visble) {
//    cp5.hide();
//  } 
//  else {
//    cp5.show();
//  }
//  cp5Visble = !cp5Visble;
}
