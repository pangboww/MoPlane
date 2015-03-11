#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(0);
    loadAllImage();

}

//--------------------------------------------------------------
void ofApp::update(){
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    background.draw(0, 0);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

void ofApp::loadAllImage(){
    background.loadImage("images/airPlanesBackground.png");
    planeL.loadImage("images/PLANE8L.png");
    planeN.loadImage("images/PLANE8N.png");
    planeR.loadImage("images/PLANE8R.png");
    propeller1.loadImage("images/PlanePropeller1.png");
    propeller2.loadImage("images/PlanePropeller2.png");
    shadow.loadImage("images/PLANE8SHADOW.png");
    bullet.loadImage("images/bullet.png");
    missile.loadImage("images/missile.png");
    enemy.loadImage("images/aerolite01.png");
    for (int i = 1; i <= 16; i++) {
        string filename;
        filename += "images/explosion";
        filename += ofToString(i);
        filename += ".png";
        ofImage image;
        image.loadImage(filename);
        explosion.insert(explosion.end(), image);
    }
}

