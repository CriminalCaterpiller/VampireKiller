class Player extends MovieClip{
var spooge = 0;
var upPress = false;
var lftPress = false;
var rgtPress = false;
var dwnPress = false;
var spacePress = false;
var facingRight = false;
function update(){
if (Key.isDown(38)){upPress = true;
}else {upPress = false;}

if (Key.isDown(37)){
lftPress = true; facingRight = false;
}else {lftPress = false;}

if (Key.isDown(39)){
rgtPress = true; facingRight = true;
}else {rgtPress = false;}

if (Key.isDown(40)){dwnPress = true;}
else {dwnPress = false;}

if (Key.isDown(32)){spacePress = true;}
else {spacePress = false;}

if (rgtPress) this._x += 5;
if (lftPress) this._x -= 5;
if (facingRight){
if (_xscale<0)_xscale*=-1;
}else{
if (_xscale>0)_xscale*=-1;
}
if (spacePress and _currentFrame == 1)
this.gotoAndPlay("slash");
}}