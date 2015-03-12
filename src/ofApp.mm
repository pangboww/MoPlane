#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofBackground(0);
    loadAllImage();
    myPlane = new Plane(new ofVec2f(ofGetWidth()/2,ofGetHeight()/1.3));
}

//--------------------------------------------------------------
void ofApp::update(){
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    background.draw(0,0);
    myPlane->show();
}

//--------------------------------------------------------------
void ofApp::exit(){
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    ptouchX = touch.x;
    ptouchY = touch.y;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    myPlane->move(touch.x-ptouchX, touch.y-ptouchY);
    ptouchX = touch.x;
    ptouchY = touch.y;
    cout<<"\nmoved:" <<"\nx: " <<touch.xspeed << "\ny: "<<touch.yspeed;
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
    background.resize(320, 568);
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

