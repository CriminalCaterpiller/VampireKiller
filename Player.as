class Player extends MovieClip{
var upPress = false;var lftPress = false;
var rgtPress = false;var dwnPress = false;
var spacePress = false;
var facingRight = true;
var xVel = 0; var yVel = 0;
var life = 100;
var canJump = true;

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

_x += xVel;
_y += yVel;


if (xVel > 0) xVel--;
if (xVel < 0) xVel++;

if (yVel < 20) yVel++;

if (xVel >= 1) xVel--;
if (xVel <= -1) xVel++;

if (_currentFrame == 1 || _currentFrame == 4){
if (upPress && !upP && canJump) {this.yVel = -14};
if (rgtPress) {this._x += 7; facingRight = true;}
if (lftPress) {this._x -= 7; facingRight = false;}
}

upP = upPress;

if (!canJump && _currentFrame != 3) gotoAndPlay("jump");

canJump = false;

if (facingRight){
if (_xscale<0) {_xscale*=-1;}
}else{
if (_xscale>0) {_xscale*=-1;}
}

if (spacePress and _currentFrame == 1)
this.gotoAndPlay("slash");

}}