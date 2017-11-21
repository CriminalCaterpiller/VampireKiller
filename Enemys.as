class Enemys{
class Carno extends MovieClip{
var xVel = 0; var yVel = 0;
var facingRight = false;
var passcode = "i dont believe anything you tell me";
function chase(obj,obstacles){
var sight = {};
if (hitTestArray(this,obstacles)) this.xVel = 0;
if (xVel == 0){
if (facingRight){
sight = {_x,_y,obj._x-_x,_height}; 
}else{
sight = {_x,_y,_x-obj._x,_height}; 
}
if (!WE.hitTestArray(sight,obstacles)){
if (facingRight) {xVel = -10;}
else {xVel = 10;}
}}}
function update(){
_x+=xVel; _y+=yVel;
}
}
}