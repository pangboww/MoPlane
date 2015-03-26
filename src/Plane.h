//
//  Plane.h
//  MoPlane
//
//  Created by BO PANG on 12/03/15.
//
//

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class Plane {
public:
    Plane(ofVec2f *);
    void show();
    void move(float, float);
    void fire();
    void launch();
    
private:
    Boolean ppl;
    int c;
    ofVec2f *position;
    
    ofImage & choosePropellerImage();
    ofImage plane;
    ofImage propeller1, propeller2;
    ofImage shadow;
    
    void loadImage();
    
};



