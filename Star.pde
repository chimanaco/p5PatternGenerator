/* ----------------------------

    Star
    Author: chimanaco
    Update: 2013/5/10

---------------------------- */

class Star implements IShape{
    float[] innersX;
    float[] innersY;
    float n;
    float cx;
    float cy;
    float w;
    float h;
    float sa;
    float prop;
    color strokeColor;
    Triangle t;
    int colorStep;
    color fillColor;
    
    /* ////////////////////

        constructor

    //////////////////// */

    Star() {

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

    void update(int number, float centerx, float centery, float width, float height, float startAngle, float proportion, color strokeC, int cs, color fillC) {
        n = number;
        cx = centerx;
        cy = centery;
        w = width;
        h = height;
        sa = startAngle;
        prop = proportion;
        strokeColor = strokeC;
        colorStep = cs;
        fillColor = fillC;

        t = new Triangle();
    }

    /* ////////////////////////////

        display
    
    //////////////////////////// */

    void display() {
        innersX = new float[0];
        innersY = new float[0];

        if (n > 2) {
            float angle = TWO_PI / (2 * n);  // twice as many sides
            float dw; // draw width
            float dh; // draw height

            beginShape();

            for (int i = 0; i < 2 * n; i++) {
                dw = w;
                dh = h;
                
                if (i % 2 == 1) { // for odd vertices, use short radius
                    dw = w * prop;
                    dh = h * prop;
                }
                
                vertex(cx + dw * cos(sa + angle * i), cy + dh * sin(sa + angle * i));
                innersX = append(innersX, cx + dw * cos(sa + angle * i));
                innersY = append(innersY, cy + dh * sin(sa + angle * i));
            
            }

            endShape(CLOSE);
        }

        if(colorStep > 0) {
            for (int i = 0; i < innersX.length; i++) {
                if (i % colorStep == 1) {
                    fill(color(fillColor));
                    t.update(innersX[i - 1], innersY[i - 1],innersX[i], innersY[i], 0, 0);
                    t.display();
                }
            }
        }
    }

    /* ////////////////////////////

        drawLine
    
    //////////////////////////// */

    void drawLine() {
        for (int i = 0; i < innersX.length; i++) {
                if (i % 2 == 1) {
                line(innersX[i], innersY[i], 0, 0);
            }
        }
    }
}