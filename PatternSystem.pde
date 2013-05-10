/* ----------------------------

    Pattern System
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class PatternSystem {

    /* ////////////////////
        constructor
    //////////////////// */

    PatternSystem() {
    }

    /* ////////////////////
        tiling patten
    //////////////////// */

    void tiling(int row, int shiftX, int shiftY, IShape s) {
        // width per unit
        float w = width / row;

        for (int i = 0; i < width; i += w + shiftX) {
            for (int j = 0; j < height; j += w + shiftY) {
                pushMatrix();
                translate(i, j);
                s.run();
                popMatrix();
          }
        }
    }

    /* ////////////////////
        set Radially
    //////////////////// */

    void setRadially(float w, float h, float r, int n, IShape s) {
        for (int i = 0; i < n; i ++) {
            pushMatrix();
            float rad = radians(i * 360 / n);
            float x = (r * cos(rad));
            float y = (r * sin(rad));
            translate(x, y);
            rotate(TWO_PI / n * i - HALF_PI);
            s.run();
            popMatrix();
        }
    }
}