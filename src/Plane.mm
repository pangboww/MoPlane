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
    position = pos;
    loadImage();
}

void Plane::show(){
    shadow.draw(position->x+3, position->y+15);
    plane.draw(position->x, position->y);
    
}

void Plane::move(float x, float y){
    position->x += x;
    position->y += y;
}


void Plane::loadImage(){
    plane.loadImage("images/PLANE8N.png");
    plane.resize(98, 71);
    plane.setAnchorPoint(49, 35.5);
    propeller1.loadImage("images/PlanePropeller1.png");
    propeller2.loadImage("images/PlanePropeller2.png");
    shadow.loadImage("images/PLANE8SHADOW.png");
    shadow.resize(98, 71);
    shadow.setAnchorPoint(49, 35.5);
}