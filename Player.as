class Player extends MovieClip{
var upPress = false;var lftPress = false;
var rgtPress = false;var dwnPress = false;
var spacePress = false;
var facingRight = true;
var xVel = 0; var yVel = 0;
var life = 100;
var canJump = true;
var action = "idle";
var upP = false;

function update(){
if (Key.isDown(38)){upPress = true;
}else {upPress = false;}
if (Key.isDown(37)){lftPress = true;}
else {lftPress = false;}
if (Key.isDown(39)){rgtPress = true;}
else {rgtPress = false;}
if (Key.isDown(40)){dwnPress = true;}
else {dwnPress = false;}
if (Key.isDown(32)){spacePress = true;}
else {spacePress = false;}
WE.gravity(this);
_x+=xVel;
if (xVel > 0) xVel--; if (xVel < 0) xVel++; 
if (Math.abs(xVel) < 1) xVel = 0;
if (action == "idle" || action == "fall"){	
if (upPress and !upP and canJump) {this.yVel = -15};
if (rgtPress) {this._x += 7; facingRight = true;}
if (lftPress) {this._x -= 7; facingRight = false;}
}
if (!canJump and action != "hurt") action = "fall";
if (canJump and action == "fall") action = "idle";
if (spacePress and action == "idle") action = "slash";
canJump = false; upP = upPress;
if (facingRight) gotoAndStop(action + "Right");
if (!facingRight) gotoAndStop(action + "Left");
}}