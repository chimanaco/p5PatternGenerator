/* ----------------------------

    Petal
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class Petal implements IShape {
    float x1;
    float y1;
    float x2;
    float y2;
    float x3;
    float y3;
    float x4;
    float y4;

    /* ////////////////////

        constructor

    //////////////////// */

    Petal() {

    }

     /* ////////////////////

        run

    //////////////////// */

    void run() { 
        display();
    }

    /* ////////////////////////////

        update
    
    //////////////////////////// */

    // ex) 0, 0, 0, 0, 50, 100, 0, 100
    void update(float ax, float ay, float bx, float by , float cx, float cy , float dx, float dy) {
        x1 = ax;
        y1 = ay;
        x2 = bx;
        y2 = by;
        x3 = cx;
        y3 = cy;
        x4 = dx;
        y4 = dy;
    }

    /* ////////////////////////////

        display
    
    //////////////////////////// */

    void display() {
        beginShape();
        vertex(x1, x2);
        bezierVertex(x2, y2, x3, y3, x4, y4);
        bezierVertex(-x3, y3, -x2, y2, x1, y1);
        endShape();
    }
}