/* ----------------------------

    Ellipse
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class Ellipse implements IShape{
    float cx;
    float cy;
    float w;
    float h;
    
    /* ////////////////////

        constructor

    //////////////////// */

    Ellipse() {

    }

    /* ////////////////////

        run

    //////////////////// */

    void run() { 
        display();
    }

    /* ////////////////////

        update

    //////////////////// */

    void update(float x, float y, float width, float height) {
        cx = x;
        cy = y;
        w = width;
        h = height;
    }

    /* ////////////////////////////

        display
    
    //////////////////////////// */

    void display() {
        ellipse(cx, cy, w, h);
    }

}