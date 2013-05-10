/* ----------------------------

    Triangle
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class Triangle implements IShape {
    float x1;
    float y1;
    float x2;
    float y2;
    float x3;
    float y3;

    /* ////////////////////

        constructor

    //////////////////// */

    Triangle() {

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

    void update(float ax, float ay, float bx, float by, float cx, float cy) {
        x1 = ax;
        y1 = ay;
        x2 = bx;
        y2 = by;
        x3 = cx;
        y3 = cy;
    }

    /* ////////////////////////////

        display
    
    //////////////////////////// */

    void display() {
        beginShape();
        vertex(x1, y1);
        vertex(x2, y2);
        vertex(x3, y3);
        endShape(CLOSE);
    }
}