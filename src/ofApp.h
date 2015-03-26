#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "Plane.h"


class ofApp : public ofxiOSApp {
	
public:
    int	initialBufferSize;
    int	sampleRate;
    
    void setup();
    void update();
    void draw();
    void exit();

    void touchDown(ofTouchEventArgs & touch);
    void touchMoved(ofTouchEventArgs & touch);
    void touchUp(ofTouchEventArgs & touch);
    void touchDoubleTap(ofTouchEventArgs & touch);
    void touchCancelled(ofTouchEventArgs & touch);

    void lostFocus();
    void gotFocus();
    void gotMemoryWarning();
    void deviceOrientationChanged(int newOrientation);
    void audioIn(float * input, int bufferSize, int nChannels);
    
    
private:
    int startTime;
    int duration;
    
    Plane *myPlane;
    
    ofImage background;
    ofImage planeN, planeL, planeR;
    ofImage propeller1, propeller2;
    ofImage shadow;
    ofImage bullet, missile, enemy;
    list<ofImage> explosion;
    
    float ptouchX, ptouchY;
    
    void loadAllImage();
    
    

};


