//
//  Plane.cpp
//  MoPlane
//
//  Created by BO PANG on 12/03/15.
//
//

#include "Plane.h"

Plane::Plane(ofVec2f *pos){
    ppl = true;
    c = 0;
    position = pos;
    loadImage();
}

void Plane::show(){
    shadow.draw(position->x+3, position->y+15);
    plane.draw(position->x, position->y);
    choosePropellerImage().draw(position->x, position->y-36);
    
}

void Plane::move(float x, float y){
    position->x += x;
    position->y += y;
}

ofImage & Plane::choosePropellerImage(){
    if(ppl){
        if (c < 5) {
            c++;
            return propeller1;
        }
        ppl = false;
        c = 0;
        return propeller1;
    }
    else{
        if (c < 5) {
            c++;
            return propeller2;
        }
        ppl = true;
        c = 0;
        return propeller2;
    }
}


void Plane::loadImage(){
    plane.loadImage("images/PLANE8N.png");
    plane.resize(98, 71);
    plane.setAnchorPoint(49, 35.5);
    propeller1.loadImage("images/PlanePropeller1.png");
    propeller1.resize(12, 2);
    propeller1.setAnchorPoint(6, 1);
    propeller2.loadImage("images/PlanePropeller2.png");
    propeller2.resize(12, 2);
    propeller2.setAnchorPoint(6, 1);
    shadow.loadImage("images/PLANE8SHADOW.png");
    shadow.resize(98, 71);
    shadow.setAnchorPoint(49, 35.5);
}