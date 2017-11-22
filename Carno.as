class Carno extends MovieClip{
var xVel = 0; var yVel = 0;
var facingRight = false;
var action = "idle";
function chase(obj,obstacles){
if (obj._x > _x) {facingRight = true;}
else {facingRight = false;}
var sight = {};
_height/=1.5;
if (WE.hitTestArray(this,obstacles)) this.xVel = 0;
_height*=1.5;
if (xVel == 0){
var canSee = true;
if (obj._y+obj._height>_y && obj._y<_y+_height){
if (facingRight) {
xVel = 10;
}
else {
xVel = -10;
}}}}
function update(){
if (action == "walking"){
if (xVel > 0) {facingRight = true;}
else {facingRight = false;}
}
WE.gravity(this);
_x+=xVel; _y+=yVel;
if (xVel == 0) {action = "idle";}
else{action = "walking";}
if (facingRight){
gotoAndStop(action + "Right");
}else{
gotoAndStop(action + "Left");
}

}
}