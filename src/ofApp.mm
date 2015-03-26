#import <AVFoundation/AVFoundation.h>
#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    startTime = 0;
    duration = 0;
    ofBackground(0);
    loadAllImage();
    myPlane = new Plane(new ofVec2f(ofGetWidth()/2,ofGetHeight()/1.3));
    
    initialBufferSize = 512;
    sampleRate = 44100;
    ofSoundStreamSetup(0, 1, this, sampleRate, initialBufferSize, 1);
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

void ofApp::audioIn(float * input, int bufferSize, int nChannels){
    float x = 0;
    for(int i=0; i<bufferSize; i++) {
        x += input[i];
    }
    x = x / bufferSize;
    
    
    if(x>0.001){
        ofLog(OF_LOG_NOTICE)<<"yes!";
        if(startTime == 0){
            duration = 0;
            startTime = ofGetElapsedTimeMillis();
        }
        else{
            duration = 0;
        }
    }
    else{
        if(startTime != 0){
            duration = ofGetElapsedTimeMillis() - startTime;
            startTime = 0;
        }
        else{
            duration = 0;
        }
    }
    
    if(duration>=10 && duration < 700){
        ofLog(OF_LOG_NOTICE)<<"fire!";
    }
    else if(duration > 700){
        ofLog(OF_LOG_NOTICE)<<"Yo!missle!";
    }
    
    
    
}

