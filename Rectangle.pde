/* ----------------------------

    Triangle
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class Rectangle implements IShape {
    float x;
    float y;
    float w;
    float h;

    /* ////////////////////

        constructor

    //////////////////// */

    Rectangle() {

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

    void update(float sx, float sy, float width, float height) {
        x = sx;
        y = sy;
        w = width;
        h = height;
    }

    /* ////////////////////////////

        display
    
    //////////////////////////// */

    void display() {
        rect(x, y, w, h);
    }
}

