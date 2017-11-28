class WE{

static var volume = 100;

static function gravity(obj){
obj._y += obj.yVel;
if (obj.yVel < 20) obj.yVel++;
}

static function collide(obj1,obj2){
if (obj1.box.hitTest(obj2.box)){
var boxX1 = Math.floor(obj1.box._x * obj1._xscale/100);
var boxX2 = Math.floor(obj2.box._x * obj2._xscale/100);
var boxY1 = Math.floor(obj1.box._y * obj1._yscale/100);
var boxY2 = Math.floor(obj2.box._y * obj2._yscale/100);
obj1._x += boxX1; obj1._y += boxY1;
obj2._x += boxX2; obj2._y += boxY2;
var xPen = 0; var yPen = 0;
if (obj1._x < obj2._x){
xPen = obj1._x + obj1.box._width * obj1._xscale/100 - obj2._x;
}else{
xPen = obj2._x + obj2.box._width * obj2._xscale/100 - obj1._x;
}
if (obj1._y < obj2._y){
yPen = obj1._y + obj1.box._height * obj1._yscale/100 - obj2._y;
}else{
yPen = obj2._y + obj2.box._height * obj2._yscale/100 - obj1._y;
}
if (xPen > yPen){
if (obj1._y > obj2._y){
obj1._y += yPen;
if (obj1.yVel < 0) obj1.yVel = 0;
}else{
obj1._y -= yPen;
obj1.canJump = true;
if (obj1.yVel > 0) obj1.yVel = 0;
}}else{
if (obj1._x > obj2._x){
obj1._x += xPen;
if (obj1.xVel > 0) obj1.xVel = 0;
}else{
obj1._x -= xPen;
if (obj1.xVel < 0) obj1.xVel = 0;
}}
obj1._x -= boxX1; obj1._y -= boxY1;
obj2._x -= boxX2; obj2._y -= boxY2;
}}

static function hitTestArray(obj,arr){
for (var i = 0; i < arr.length; i++){
if (obj.hitTest(arr[i])) return true;
}
return false;
}

static function collideArray(obj,arr){
for (var i = 0; i < arr.length; i++){
collide(obj,arr[i]);
}}

}

