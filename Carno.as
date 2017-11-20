class Carno extends MovieClip{
var xVel = 0; var yVel = 0;
var facingRight = false;
var frame = "idle";
function chase(obj,obstacles){
if (obj._x > _x) facingRight = false;
if (obj._x < _x) facingRight = true;
var sight = {};
_height/=1.5;
if (WE.hitTestArray(this,obstacles)) this.xVel = 0;
_height*=1.5;
if (xVel == 0){
if (facingRight){
sight = {_x:_x,_y:_y,_width:_x-obj._x,_height:_height}; 
}else{
sight = {_x:_x,_y:_y,_width:obj._x-_x,_height:_height};
}
if (!WE.hitTestArray(sight,obstacles)){
if (facingRight) {xVel = -10;}
else {xVel = 10;}
}}}
function update(){
if (xVel > 0) {facingRight = true;}
else {facingRight = false;}
WE.gravity(this);
_x+=xVel; _y+=yVel;
if (xVel == 0) {frame = "idle";}
else{frame = "walking";}

if (facingRight){
gotoAndStop(frame + "Right");
}else{
gotoAndStop(frame + "Left");
}

}
}